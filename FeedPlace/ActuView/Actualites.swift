//
//  Actualites.swift
//  FeedPlace
//
//  Created by Apprenant77 on 12/12/2022.
//

import SwiftUI

struct Actualites: View {
    var cards: [Card] = [
    Card(titre: "Les Restaurants du Coeur", date: "15 dec 2022", texte: "Le centre de Montreuil est ouvert pour la distribution alimentaire les Mardis et Jeudis de 08:30 à 11:30. Les inscriptions se font uniquement sur rendez-vous à l'adresse suivante: 70 Rue Douy Délcupe, 93100 Montreuil.", image: "restoCoeur"),
    Card(titre: "Banque Alimentaire", date: "13 dec 2022", texte: "Une distribution de colis alimentaire pour les plus démunis aura lieu ce Samedi 17 Décembre entre 14h et 16h devant la Mairie de Montreuil, 93100.", image: "banqueAli"),
    Card(titre: "Croix Rouge Française", date: "10 dec 2022", texte: "Les fêtes approchent et nos généreux donateurs sont toujours présent afin de nous faire vivre ces moments en toute dignité. Nous vous attendons au 5 Rue Paul Lafargue, 93100 Montreuil.", image: "croix"),
    Card(titre: "Amatullah", date: "8 dec 2022", texte: "Retrouvez notre équipe de distribution alimentaire tous les mercredis et samedis devant le cimetiere du Père-Lachaise. Nous vous attendons ❤️. ", image: "ama"),
    Card(titre: "Epicerie du Coeur", date: "6 dec 2022", texte: "L'épicerie solidaire du Coeur vous accueille dans ces locaux du Mardi au Samedi de 10h à 19h afin de pouvoir bénéficier d'un panier alimentaire complet. 28 rue des Polyanthas, 93110 Rosny-Sous-Bois.", image: "panier"),
    Card(titre: "Votre app Feed Place", date: "1 dec 2022", texte: "Retrouvez toutes les actualités régulièrement mise à jour des différents acteurs de la solidarite alimentaire autour de chez vous grâce à Feed Place.", image: "fp"),
    ]
    var body: some View {
        NavigationView{
            ScrollView {
                ForEach(cards) { card in
                    CardDetail (card: card)
}
} .background(Color("beigeaccent"))
}
}
        
    
struct Actualites_Previews: PreviewProvider {
    static var previews: some View {
        Actualites()
}
}

    struct Card: Identifiable {
    var id = UUID()
    var titre: String
    var date: String
    var texte: String
    var image: String

}

struct CardDetail: View {
    var card: Card
    var body: some View {
        VStack(alignment: .leading) {
            Text(card.titre)
                    .font(.title)
                    .fontWeight(.semibold)
                    .navigationTitle ("Actualités")
                    .foregroundColor(Color("greenaccent"))
            Text(card.date)
                    .foregroundColor(.gray)
                    .padding(.bottom, 5)
            Text(card.texte)
                .foregroundColor(.black)
            Image(card.image)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 180)
                .cornerRadius(10)
                .padding(.bottom, 40)
}
        .padding(.horizontal)
}
}
}

