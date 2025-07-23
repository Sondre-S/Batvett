//
//  ExpandableCategory.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 20/07/2025.
//

import SwiftUI

struct ExpandableCategory: View {
    
    var categoryName: String
    @Binding var isExpanded: Bool
    
    var body: some View {
        Button(action: {
                isExpanded.toggle()
        }) {
                HStack{
                    Text(categoryName)
                        .font(.title3.bold())
                    Spacer()
                    Image(systemName: isExpanded ? "chevron.down" : "chevron.up")
                }
                .buttonStyle(.plain)
                .foregroundStyle(.black)
                .padding()
            }
    }
}

#Preview {
    @Previewable @State var bool = true
    ExpandableCategory(categoryName: "Sjømerker", isExpanded: $bool)
}
