//
//  RulesOfTheSeaViewModel.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 26/06/2024.
//

import Foundation

class RulesOfTheSeaViewModel {
    
    let rulesOfTheSea: [SeaRule] = [
        SeaRule(title: "Tenk sikkerhet", description: "Kunnskap og planlegging reduserer risikoen og øker trivselen."),
        SeaRule(title: "Ta med nødvendig utstyr", description: "Utstyret må holdes i orden og være lett tilgjengelig."),
        SeaRule(title: "Respekter vær og farvann", description: "Båten må bare benyttes under egnede forhold."),
        SeaRule(title: "Følg sjøveisreglene", description: "Bestemmelsene om vikeplikt, hastighet og lanterneføring må overholdes."),
        SeaRule(title: "Bruk redningsvest eller flyteplagg", description: "Det er påbudt å ha på seg flyteutstyr om bord i fritidsbåter under 8 meter. Fritidsbåter f.o.m. 8 meter skal ha egnet flyteutstyr til alle om bord."),
        SeaRule(title: "Vær uthvilt og edru", description: "Promillegrensen er 0,8 når du fører fritidsbåt under 15 meter."),
        SeaRule(title: "Vis hensyn", description: "Sikkerhet, miljø og trivsel er et felles ansvar.")
    ]
    
}
