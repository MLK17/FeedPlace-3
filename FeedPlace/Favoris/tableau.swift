//
//  test4.swift
//  enfin stp
//
//  Created by Sofiane Mulic on 07/12/2022.
//

import SwiftUI

struct tableau: Identifiable {
    var image: String
    var id: Int
    var title: String
    var description: String
    var isFaved: Bool
    
    
    static var sampleItems: [tableau]{
        var tempList = [tableau]()
        
            let image = ""
            let id = 0
            let title = ""
            let description = ""
            
        tempList.append(tableau( image: "restoCoeur", id: 0, title: "Resto du Coeur", description: "Catégorie: Association", isFaved: false))
        tempList.append(tableau( image: "banqueAli", id: 1, title: "Banque Alimentiare", description: "Catégorie: Aide précarité", isFaved: false))
        tempList.append(tableau( image: "secoursPop", id: 2, title: "Secours Populaire", description: "Catégorie: Association", isFaved: false))
        tempList.append(tableau( image: "caravane", id: 3, title: "Caravane Coop Supermarché", description: "Catégorie: Aide précarité", isFaved: false))
        tempList.append(tableau( image: "asso", id: 4, title: "Epicerie Solidaire Aurore", description: "Catégorie: Association", isFaved: false))
        tempList.append(tableau( image: "bro", id: 5, title: "La Broc'antine", description: "Catégorie: Association", isFaved: false))

            


        
        return tempList
        
    }
   
}
 
