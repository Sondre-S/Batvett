//
//  RulesOfTheSeaListView.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 16/06/2024.
//

import SwiftUI

struct RulesOfTheSeaListView: View {
    
    var rotsvm = RulesOfTheSeaViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment:.leading){
                    ForEach(rotsvm.rulesOfTheSea) { rule in
                        
                        InfoCell(cellTitle: rule.title, infoText: rule.description, bigTitle: true)
                        
                    }
                    Text("Kilde: sdir.no")
                        .font(.caption)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                }
            }
                .navigationTitle("Sjøvettregler")
        }
    }
}

#Preview {
    RulesOfTheSeaListView()
}
