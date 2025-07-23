//
//  AidsToNavigationCell.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 30/06/2024.
//

import SwiftUI

struct AidsToNavigationCell: View {
    
    @State var navigationAid: NavigationAid
    
    var body: some View {
        VStack{
            HStack{
                Image(navigationAid.headerImage)
                    .resizable()
                    .headerImageModifier()
                
                VStack(alignment:.leading){
                    Text(navigationAid.title)
                        .font(.title3).bold()
                        .padding(.leading, 10)
                }
                Spacer()
                
                Image(systemName: "arrowtriangle.right.circle")
                    .foregroundStyle(.blue)
            }
            .padding(.horizontal, 30)
            
            .frame(height: 120)
        }
    }
}

#Preview {
    AidsToNavigationCell(navigationAid: NavigationAid(title: "Båke", desc: "Passering nord for merket", color: "Svart gul", light: "Hvitt, kontinuerlig hurtigblink", topMark: "To svarte kjegler som begge peker opp",  mapSymbol: "", headerImage: "kardinal-nord", order: 1))
}
