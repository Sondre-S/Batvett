//
//  KnotsDetailView.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 16/06/2024.
//

import SwiftUI
import SwiftData

struct KnotsDetailView: View {
    
    @Environment(\.modelContext) var context
    
    @Bindable var knot: Knot
    
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading){
                
                Text("Slik gjør du")
                    .font(.title2).bold()
                      .padding()
                
                InfoCell(cellTitle: "Steg 1", infoText: knot.step1Desc, bigTitle: true, image: knot.step1Image )
                
                InfoCell(cellTitle: "Steg 2", infoText: knot.step2Desc, bigTitle: true, image: knot.step2Image)
             
                
                if let step3 = knot.step3Desc {
                    InfoCell(cellTitle: "Steg 3", infoText: step3, bigTitle: true, image: knot.step3Image)
                }
            }
            
        }
        .navigationTitle(knot.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    knot.isFavorite?.toggle()
                    
                    do {
                        try context.save()
                    } catch {
                        print("❌ Failed to save favorite toggle: \(error)")
                    }
                    
                }) {
                    Image(systemName: knot.isFavorite ?? false ? "star.fill" : "star")
                }
            }
        }
    }
}

#Preview {
    KnotsDetailView(knot: Knot(title: "Båtmannsknop", desc: "Dersom du har to tamper som skal bindes rundt noe og så skal festes er båtsmannsknop en smart knute", headerImage: "batsmannsknop_header", step1Desc: "Venstre tamp over høyre.", step2Desc: "Deretter høyre over venstre – altså motsatt av forrige.", step3Desc: "Stram til!", step1Image: "batmannsknop_del1", step2Image: "batmannsknop_del2", step3Image: "batmannsknop_del3", order: 1))
}
