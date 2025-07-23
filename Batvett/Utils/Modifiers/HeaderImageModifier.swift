//
//  HeaderImageModifier.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 23/07/2025.
//

import SwiftUI

struct HeaderImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.trailing, 8)
            .frame(maxWidth: 150, maxHeight: 120)
    }
}

extension View {
    func headerImageModifier() -> some View {
        modifier(HeaderImageModifier())
    }
}
