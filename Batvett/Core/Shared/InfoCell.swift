//
//  AidsToNavigationInfoCell.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 23/09/2024.
//

import SwiftUI

struct InfoCell: View {
    var cellTitle: String
    var infoText: String
    var bigTitle: Bool
    var image: String?
    
    var body: some View {
        ZStack(alignment: .topLeading){
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
            VStack(alignment: .leading){
                Text(cellTitle)
                    //.font(.caption.bold())
                    .font(bigTitle ? .title3.bold() : .caption.bold())
                
                Divider()
                    .overlay(Color.white)
                
                Text(infoText)
                
                
                if let image = image {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .padding(.bottom, 10)
                }
            }
            .padding()
            .foregroundStyle(.white)
        }
        .frame(minHeight: 80)
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
    }
}

#Preview {
    InfoCell(cellTitle: "Navigasjon", infoText: "Passering vest for merket", bigTitle: true)
}
