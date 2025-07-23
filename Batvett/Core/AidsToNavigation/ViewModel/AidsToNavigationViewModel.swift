//
//  AidsToNavigationViewModel.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 26/06/2024.
//

import Foundation

class AidsToNavigationViewModel {
    
    let navigationAids: [NavigationAid] = [
    
        NavigationAid(title: "Kardinalmerke nord", desc: "Passering nord for merket.", color: "Svart, gul.", light: "Hvitt, kontinuerlig hurtigblink.", topMark: "To svarte kjegler som begge peker opp.",  mapSymbol: "", headerImage: "kardinal-nord", isFavorite: false, order: 1),
        
        NavigationAid(title: "Kardinalmerke øst", desc: "Passering øst for merket.", color: "Svart, gul, svart.", light: "Hvitt hurtigblink med grupper av tre blink.", topMark: "To svarte kjegler, øverste peker opp, nederste peker ned.",  mapSymbol: "", headerImage: "kardinal-ost", isFavorite: false, order: 2),
        
        NavigationAid(title: "Kardinalmerke sør", desc: "Passering sør for merket", color: "Gul, svart", light: "Hvitt hurtigblink med grupper av seks blink. Deretter langvarig lys.", topMark: "To svarte kjegler som begge peker ned.",  mapSymbol: "", headerImage: "kardinal-sor", isFavorite: false, order: 3),
        
        NavigationAid(title: "Kardinalmerke vest", desc: "Passering vest for merket", color: "Gul, svart, gul", light: "Hvitt hurtigblink med grupper av ni blink.", topMark: "To svarte kjegler, øverste peiker ned, nederste peker opp.",  mapSymbol: "", headerImage: "kardinal-vest", isFavorite: false, order: 4),
        
        NavigationAid(title: "Sideavmerking grønn", desc: "Merket skal passeres slik at man får grønn lanterne (styrbord) mot det grønne merket om man følger ledens hovedretning.", characteristic: "Grønn sylinder med konisk toppmerke, grønt lys med hva som helst av karakter. Kan ha påskrevet et oddetall. Grønne staker er spisse på toppen – røde er flate.", mapSymbol: "", headerImage: "lateral-gronn", isFavorite: false, order: 5),
        
        NavigationAid(title: "Sideavmerking rød", desc: "Skal passeres slik at man får rød lanterne (babord) mot det røde merket om man følger ledens hovedreting.", characteristic: "Rød sylinder med kvadratisk toppmerke, rødt lys med hva som helst av karakter. Kan ha påskrevet et partall.", mapSymbol: "", headerImage: "lateral-rod", isFavorite: false, order: 6),
        
        NavigationAid(title: "Frittliggende grunne", desc: "Merket frittliggende fare eller grunne, også kalt midtgrunnemerke. Trafikken kan gå på alle sider av grunnen eller faren som er markert.", color: "Svart, med røde bånd.", light: "Hvitt", characteristic: "Grupper med to hurtigblink.", topMark: "To svarte kuler (forekommer sjeldent).", mapSymbol: "", headerImage: "frittliggende-grunne", isFavorite: false, order: 7),
        
        NavigationAid(title: "Senterledmerke", desc: "Et senterledsmerke kan markere midten av en kanal eller et annet trygt område. Trafikken kan gå på alle sider av merket.", color: "Rød og hvit.", light: "Hvitt.", characteristic: "Flere ulike typer langblink.", topMark: "En rød kule.", mapSymbol: "", headerImage: "senterled", isFavorite: false, order: 8),
        
        NavigationAid(title: "Spesialmerke", desc: "Spesialmerkene blir brukt til å markere forskjellige typer områder som skips- og båttrafikken skal holde klar av, f.eks badeplasser.", color: "Gul.", light: "Gult.", topMark: "Gult kryss.", mapSymbol: "", headerImage: "spesialmerke", isFavorite: false, order:9),
        
        NavigationAid(title: "Jernstang eller søyle", desc: "Skal passeres på den siden som armen peker (armen peker bestandig mot trygt farvann).", mapSymbol: "", headerImage: "jernstang", isFavorite: false, order: 10),
        
        NavigationAid(title: "Jernstang med toppmerke (krekse)", desc: "Skal passeres på den siden som armen peker (armen peker bestandig mot trygt farvann).", mapSymbol: "", headerImage: "krekse", isFavorite: false, order: 11),
        
        NavigationAid(title: "Båke", desc: "Båke er et større sjømerke, normalt av tre, på et skjær eller på land.", characteristic: "Merket kan ha viser for å vise retning til farvannet eller leden. I enkelte tilfelle kan båken være malt i spesielle farger for å gjøre den lett synlig og gjenkjennelig.", mapSymbol: "", headerImage: "bake", isFavorite: false, order: 12),
        
        NavigationAid(title: "Varde", desc: "Vardene som er bygd opp på holmer og skjær, er ment som faste holdepunkt innen navigasjon.", topMark: "Kan være montert visere som peker mot den siden av varden som leia går.", mapSymbol: "", headerImage: "varde", isFavorite: false, order: 13),
        
        NavigationAid(title: "HIB", desc: "Spesialmerke som brukes i forbindelse med hurtigbåt i rute.", characteristic: "Merket består av en LED-lykt med en gitt karakteristikk og et fast lys som belyser en hvit kjegle under.", mapSymbol: "", headerImage: "HIB", isFavorite: false, order: 14)
    ]
}
