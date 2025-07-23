//
//  Knot.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 26/06/2024.
//

import Foundation
import SwiftData

@Model
class Knot: Identifiable, Equatable{
    @Attribute(.unique) var id = UUID()
    var title: String
    var desc: String
    var headerImage: String
    
    var step1Desc: String
    var step2Desc: String
    var step3Desc: String?
    
    var step1Image: String
    var step2Image: String
    var step3Image: String?
    
    var isFavorite: Bool?
    
    var order: Int
    
    init(id: UUID = UUID(), title: String, desc: String, headerImage: String, step1Desc: String, step2Desc: String, step3Desc: String? = nil, step1Image: String, step2Image: String, step3Image: String? = nil, isFavorite: Bool? = false, order: Int) {
        self.id = id
        self.title = title
        self.desc = desc
        self.headerImage = headerImage
        self.step1Desc = step1Desc
        self.step2Desc = step2Desc
        self.step3Desc = step3Desc
        self.step1Image = step1Image
        self.step2Image = step2Image
        self.step3Image = step3Image
        self.isFavorite = isFavorite
        self.order = order
    }
    
}
