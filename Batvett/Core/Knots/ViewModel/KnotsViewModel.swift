//
//  KnotsViewModel.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 26/06/2024.
//

import Foundation

class KnotsViewModel{
    
    let knots: [Knot] = [
        Knot(title: "Pålestikk", desc: "Enten du vil fortøye båten, eller binde to tau sammen er knuten pålestikk den rette for deg.", headerImage: "palestikk_header", step1Desc: "Form et øye et stykke inn på tauet, fra tampen. Husk at tampen skal ligge på oversiden av den faste parten.", step2Desc: "Tre tampen opp gjennom øyet, rundt fast part og ned igjen i øyet.", step3Desc: "Tre tampen inn i øyet, og stram til. Da har du et pålestikk. En fantastisk knute som tåler det meste, men er lett å få opp.", step1Image: "palestikk_del1", step2Image: "palestikk_del2", step3Image: "palestikk_del3", order: 1),
        Knot(title: "Flaggstikk", desc: "Flaggstikket bruker man blant annet for å skjøte to tau. Tauene kan være av forskjellig type og størrelse. Svakheten med dette stikket, er at det blir løst om det ikke ligger med konstant belastning.", headerImage: "flaggstikk_header", step1Desc: "Lag en bukt på det tykkeste tauet. Før tampen på det tynneste tauet opp og gjennom bukta.", step2Desc: "Fortsett rundt det tykke tauet og tilbake igjen under egen fast part.", step1Image: "flaggstikk_del1", step2Image: "flaggstikk_del2", order: 2),
        Knot(title: "Dobbelt halvstikk", desc: "Dobbelt halvstikk er en mye brukt knute for å feste et tau i noe, for eksempel et tre, en ring eller en ræling.", headerImage: "dobbelthalvstikk_header", step1Desc: "Lag en løkke der tampen er på undersiden av fast part.", step2Desc: "Legg så på en ny tilsvarende løkke.",step3Desc: "Stram til.", step1Image: "dobbelthalvstikk_del1", step2Image: "dobbelthalvstikk_del2", step3Image: "dobbelthalvstikk_del3", order: 3),
        Knot(title: "Åttetallsknop", desc: "Åttetallsknop er en stoppknute.", headerImage: "attetallsknute_header", step1Desc: "Lag et øye med en lang tamp.", step2Desc: "Før så tampen under fast part og gjennom øyet.", step3Desc: "Da har du laget et åttetall – og en åttetallsknute", step1Image: "attetallsknute_del1", step2Image: "attetallsknute_del2", step3Image: "attetallsknute_del3", order: 4),
        Knot(title: "Båtmannsknop", desc: "Dersom du har to tamper som skal bindes rundt noe og så skal festes er båtsmannsknop en smart knute", headerImage: "batsmannsknop_header", step1Desc: "Venstre tamp over høyre.", step2Desc: "Deretter høyre over venstre – altså motsatt av forrige.", step3Desc: "Stram til!", step1Image: "batmannsknop_del1", step2Image: "batmannsknop_del2", step3Image: "batmannsknop_del3", order: 5)
        
    ]
    
}
