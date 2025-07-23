//
//  DataSeeder.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 08/07/2025.
//

import Foundation

import Foundation
import SwiftData

struct DataSeeder {
    @MainActor
    static func seedData(context: ModelContext) async {
        let navDescriptor = FetchDescriptor<NavigationAid>()
        let navExisting = try? context.fetchCount(navDescriptor)
        
        let knotDescriptor = FetchDescriptor<Knot>()
        let knotExisting = try? context.fetchCount(knotDescriptor)

        guard navExisting == 0 else {
            return
        }
        
        guard knotExisting == 0 else {
            return
        }

        let navAids = AidsToNavigationViewModel().navigationAids

        for (index,aid) in navAids.enumerated() {
            aid.order = index
            context.insert(aid)
        }
        
        let knots = KnotsViewModel().knots
        
        for knot in knots{
            context.insert(knot)
        }
        
        do {
            try context.save()
            print("Data seeded into SwiftData")
        } catch {
            print("ERROR: Failed to save seed data: \(error)")
        }
    }
}
