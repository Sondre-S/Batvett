//
//  TabBarView.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 16/06/2024.
//

import SwiftUI
import SwiftData

struct TabBarView: View {
    
    @Environment(\.modelContext) private var context
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            AidsToNavigationListView()
                .tabItem {
                    Image(selectedTab == 0 ? "buoy-filled" : "buoy")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .tag(0)
            
            KnotsListView()
                .tabItem {
                    Image(selectedTab == 1 ? "rope-filled" : "rope")
                        .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                }
                .tag(1)
            
            RulesOfTheSeaListView()
                .tabItem {
                    Image(selectedTab == 2 ? "list-filled" : "list")
                        .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                }
                .tag(2)
            
            FavoritesListView()
                .tabItem {
                    Image(selectedTab == 3 ? "favorite-filled" : "favorite")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                }
                .tag(3)
        }
        .task {
            await DataSeeder.seedData(context: context)
        }
    }
}

#Preview {
    TabBarView()
}
