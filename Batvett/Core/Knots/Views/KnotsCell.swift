//
//  KnotsCell.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 07/07/2025.
//

import SwiftUI

struct KnotsCell: View {
    
    @State var knot: Knot
    
    var body: some View {
        VStack{
            HStack{
                Image(knot.headerImage)
                    .resizable()
                    .headerImageModifier()
                VStack(alignment:.leading){
                    Text(knot.title)
                        .font(.title3).bold()
                        .padding(.leading, 10)
                }
                Spacer()
                
                Image(systemName: "arrowtriangle.right.circle")
                    .foregroundStyle(.blue)
            }
            .padding(.horizontal, 30)
            
        }
        .frame(height: 120)
    }
}

#Preview {
    KnotsCell(knot: Knot(title: "Dobbelt halvstikk", desc: "Dobbelt halvstikk er en mye brukt knute for å feste et tau i noe, for eksempel et tre, en ring eller en ræling.", headerImage: "dobbelthalvstikk_header", step1Desc: "Lag en løkke der tampen er på undersiden av fast part.", step2Desc: "Legg så på en ny tilsvarende løkke.",step3Desc: "Stram til.", step1Image: "dobbelthalvstikk_del1", step2Image: "dobbelthalvstikk_del2", step3Image: "dobbelthalvstikk_del3", order: 1))
}
