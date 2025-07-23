//
//  AidsToNavigationDetailView.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 16/06/2024.
//

import SwiftUI
import SwiftData

struct AidsToNavigationDetailView: View {
    
    @Environment(\.modelContext) var context
    
    @Bindable var navigationAid: NavigationAid
    
    var body: some View {

            ScrollView{
                Image(navigationAid.headerImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                
                VStack(alignment: .leading){
                    InfoCell(cellTitle: "Navigasjon", infoText: navigationAid.desc, bigTitle: false)
                    if let topmark = navigationAid.topMark{
                        InfoCell(cellTitle: "Toppmerke", infoText: topmark, bigTitle: false)
                    }
                    
                    if let light = navigationAid.light {
                        InfoCell(cellTitle: "Lys", infoText: light, bigTitle: false)
                    }
                    
                    if let characteristic = navigationAid.characteristic{
                        InfoCell(cellTitle: "Karakteristikk", infoText: characteristic, bigTitle: false)
                    }
                    
                }
                Spacer()
            }
            .navigationTitle(navigationAid.title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        navigationAid.isFavorite?.toggle()
                        
                        do {
                            try context.save()
                        } catch {
                            print("❌ Failed to save favorite toggle: \(error)")
                        }
                        
                    }) {
                        Image(systemName: navigationAid.isFavorite ?? false ? "star.fill" : "star")
                    }
                }
            }
    }
}



#Preview {
    AidsToNavigationDetailView(navigationAid: NavigationAid(title: "Kardinalmerke vest", desc: "Passering vest for merket", color: "Gul, svart, gul", light: "Hvitt hurtigblink med grupper av ni blink", characteristic: "Grupper med to hurtigblink", topMark: "To svarte kjegler, øverste peiker ned, nederste peker opp",  mapSymbol: "", headerImage: "kardinal-vest", order: 1))
}
