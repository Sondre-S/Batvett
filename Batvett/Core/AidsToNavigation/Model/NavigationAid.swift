//
//  NavigationAid.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 26/06/2024.
//

import Foundation
import SwiftData

@Model
class NavigationAid: Identifiable{
    
    @Attribute(.unique) var id = UUID()
    var title: String
    var desc: String
    var color: String?
    var light: String?
    var characteristic: String?
    var topMark: String?
    var mapSymbol: String
    var headerImage: String
    var isFavorite: Bool?
    var order: Int
    
    init(id: UUID = UUID(), title: String, desc: String, color: String? = nil, light: String? = nil, characteristic: String? = nil, topMark: String? = nil, mapSymbol: String, headerImage: String, isFavorite: Bool? = false, order: Int) {
        self.id = id
        self.title = title
        self.desc = desc
        self.color = color
        self.light = light
        self.characteristic = characteristic
        self.topMark = topMark
        self.mapSymbol = mapSymbol
        self.headerImage = headerImage
        self.isFavorite = isFavorite
        self.order = order
    }
}
