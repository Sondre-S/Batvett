//
//  KnotsListView.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 16/06/2024.
//

import SwiftUI
import SwiftData

struct KnotsListView: View {
    
    @Query(sort: \Knot.order) var knots: [Knot]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ForEach(knots) { knot in
                    NavigationLink{
                        KnotsDetailView(knot: knot)
                    } label: {
                        VStack{
                            if knot != knots.last {
                                KnotsCell(knot: knot)
                                Divider()
                                    .frame(maxWidth: 350)
                            } else {
                                KnotsCell(knot: knot)
                            }
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
            .navigationTitle("Knoper og stikk")
        }
    }
}

#Preview {
    KnotsListView()
}
