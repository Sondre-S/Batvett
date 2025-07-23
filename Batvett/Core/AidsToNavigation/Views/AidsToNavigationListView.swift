//
//  AidsToNavigationListView.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 16/06/2024.
//

import SwiftUI
import SwiftData

struct AidsToNavigationListView: View {
    
    @Query(sort: \NavigationAid.order) var navigationAids: [NavigationAid]
    
    var body: some View {
        NavigationStack{
                ScrollView{
                    ForEach(navigationAids) {navAid in
                        NavigationLink {
                            AidsToNavigationDetailView(navigationAid: navAid)
                        } label: {
                            VStack{
                                if navAid != navigationAids.last {
                                    AidsToNavigationCell(navigationAid: navAid)
                                    Divider()
                                        .frame(maxWidth: 350)
                                } else {
                                    AidsToNavigationCell(navigationAid: navAid)
                                }
                            }
                        }
                        .buttonStyle(.plain)
                    }
                }
                .navigationTitle("Sjømerker")
            }
    }
}

#Preview {
    AidsToNavigationListView()
}
