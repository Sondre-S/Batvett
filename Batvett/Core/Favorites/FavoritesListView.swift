//
//  FavoritesListView.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 08/07/2025.
//

import SwiftUI
import SwiftData

struct FavoritesListView: View {
    
    @Query(filter: #Predicate<NavigationAid> { $0.isFavorite == true }, sort: \NavigationAid.order) var navFavorites: [NavigationAid]
    @Query(filter: #Predicate<Knot> { $0.isFavorite == true }, sort: \Knot.order) var knotFavorites: [Knot]
    
    @State var navIsExpanded = true
    @State var knotsIsExpanded = true
    
    var body: some View {
        NavigationStack{
            VStack{
                if navFavorites.isEmpty && knotFavorites.isEmpty {
                    ContentUnavailableView("Du har ikke lagret noen favoritter enda", systemImage:  "list.bullet.rectangle.portrait", description: Text("Stjernemarker noen sjømerker eller knuter så dukker de opp her!"))
                } else {
                    VStack{
                        ScrollView{
                            if !navFavorites.isEmpty {
                                ExpandableCategory(categoryName: "Sjømerker", isExpanded: $navIsExpanded)
                                Spacer()
                            }
                            if navIsExpanded {
                                VStack{
                                    ForEach(navFavorites) { navFavorite in
                                        NavigationLink {
                                            AidsToNavigationDetailView(navigationAid: navFavorite)
                                        } label: {
                                            VStack{
                                                if navFavorite != navFavorites.last {
                                                    AidsToNavigationCell(navigationAid: navFavorite)
                                                    Divider()
                                                        .frame(maxWidth: 350)
                                                } else {
                                                    AidsToNavigationCell(navigationAid: navFavorite)
                                                }
                                            }
                                        }
                                        .buttonStyle(.plain)
                                    }
                                }
                            }
                            if !knotFavorites.isEmpty {
                                ExpandableCategory(categoryName: "Knoper & stikk", isExpanded: $knotsIsExpanded)
                                Spacer()
                            }
                            if knotsIsExpanded {
                                VStack{
                                    ForEach(knotFavorites) { knotFavorite in
                                        NavigationLink {
                                            KnotsDetailView(knot: knotFavorite)
                                        } label: {
                                            VStack{
                                                if knotFavorite != knotFavorites.last {
                                                    KnotsCell(knot: knotFavorite)
                                                    Divider()
                                                        .frame(maxWidth: 350)
                                                } else {
                                                    KnotsCell(knot: knotFavorite)
                                                }
                                            }
                                        }
                                        .buttonStyle(.plain)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Favoritter")
        }
    }
}

#Preview {
    FavoritesListView()
}
