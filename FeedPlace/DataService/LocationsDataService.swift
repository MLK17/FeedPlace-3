//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Apprenant77 on 07/12/2022.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Les Restos du coeur",
            cityName: "Montreuil",
            Adresse:"70 rue Douy Délcupe, 93150 Montreuil",
            coordinates: CLLocationCoordinate2D(latitude: 48.85596,  longitude: 2.43021),
            descriptiuon: "Association, Distribution de repas",
            eMail:"ad93.montreuil@restosducoeur.org",
            phoneNumber: "01 42 87 61 12",
            Horaires: "\tLundi\t\t 8H30 - 11h30\r\tMardi\t\t 8H30 - 11h30\r\tMercredi\t\t Fermé\r\tJeudi\t\t 8H30 - 11h30\r\tVendredi\t 8H30 - 11h30 \r\tSamedi\t\t\t Fermé\r\tDimanche\t\t Fermé",
            imageNames: ["BROC"],
            link: "https://www.restosducoeur.org"),
        Location (
            name: "Secours Populaire",
            cityName: "Montreuil",
            Adresse: "1 sq J.P Timbaud, 93100 Montreuil",
            coordinates: CLLocationCoordinate2D(latitude: 48.86579, longitude: 2.42829),
            descriptiuon: "Association Caritative",
            eMail: "montreuil@spf93.org",
            phoneNumber:"01 48 70 16 81",
            Horaires: "\tLundi\t\t 14H00 - 17h00\r\tMardi\t\t 14H00 - 17h00\r\tMercredi\t 14H00 - 17h00\r\tJeudi\t\t\t Fermé\r\tVendredi\t\t Fermé\r\tSamedi\t\t10H00 - 13h00\r\tDimanche\t\t Fermé",
            imageNames: ["AURORE"],
            link: "https://www.secourspopulaire.fr"),
        Location(
            name: "Caravane Coop",
            cityName: "Montreuil",
            Adresse: "23 rue Gaston Lauriau, 93100 Montreuil",
            coordinates: CLLocationCoordinate2D(latitude: 48.85983, longitude: 2.44548),
            descriptiuon: "L’Épicerie Coopérative et Ephémère",
            eMail:":---",
            phoneNumber:"09 72 28 40 83",
            Horaires: "\tLundi\t\t 14H00 - 21h00\r\tMardi\t\t 16H30 - 21h00\r\tMercredi\t 14H00 - 17h00\r\tJeudi\t\t 16H30 - 21h00\r\tVendredi\t 09H00 - 21h00\r\tSamedi\t\t 09H00 - 18h45\r\tDimanche\t\t Fermé",
            imageNames: ["CARAVAN"],
            link: "http://lacaravanecoop.fr"),
        Location(
            name: "Cofides Nord-Sud",
            cityName: "Montreuil",
            Adresse: "31 Rue de Vincennes, 93100 Montreuil",
            coordinates: CLLocationCoordinate2D(latitude: 48.85577478106944, longitude: 2.4369964987934396),
            descriptiuon: "Association",
            eMail:"coordination@cofides.org",
            phoneNumber:"Téléphone: 01 49 33 00 51",
            Horaires: "\tLundi\t\t 09H00 - 17h00\r\tMardi\t\t 09H00 - 17h00\r\tMercredi\t 09H00 - 17h00\r\tJeudi\t\t 09H00 - 17h00\r\tVendredi\t 09H00 - 17h00\r\tSamedi\t\t\t Fermé\r\tDimanche\t\t Fermé",
            imageNames: ["Nord-SudImage"],
            link: "https://www.cofides.org/"),
        Location(
            name: "La Source",
            cityName: "Paris",
            Adresse:"4 Rue Félix Terrier, 75020 Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.857864234164715, longitude: 2.4109898075874954),
            descriptiuon: "Epicerie Solidaire",
            eMail: "lasource.epicerie@gmail.com",
            phoneNumber:"0658128886",
            Horaires: "\t\tLundi au vendredi \r\t\t10H00 - 18h00\r\t",
            imageNames: ["LasourceImage"],
            link: "https://cooplasource.fr/"),
        Location(
            name: "Aurore",
            cityName: "Montreuil",
            Adresse:"30 Rue de Saint-Antoine Batiment B2, 93100 Montreuil",
            coordinates: CLLocationCoordinate2D(latitude: 48.86474747836075,  longitude: 2.4557096126645814),
            descriptiuon: "Epicerie Solidaire",
            eMail: "@:---",
            phoneNumber:"0173000230",
            Horaires: "\t\tLundi au vendredi \r\t\t10H00 - 18h00\r\t",
            imageNames: ["Aurore1"],
            link: "http://aurore.asso.fr/"),
        
        Location(
            name: "Ocoeurdelarue",
            cityName: "Montreuil",
            Adresse:"30 Rue de Saint-Antoine Batiment B2, 93100 Montreuil",
            coordinates: CLLocationCoordinate2D(latitude: 48.88839486166768, longitude: 2.529674954550863),
            descriptiuon: "Organisme Solidaire",
            eMail: "Contact@ocoeurdelarue.org",
            phoneNumber:"06 52 81 52 21",
            Horaires: "\t\tDimanche",
            imageNames: [
                "ocoeur1",
                "ocoeur2"],
            link: "https://www.ocoeurdelarue.org"),
        
        Location(
            name: "Les 400 COOP",
            cityName: "Paris 11",
            Adresse:"65 Boulevard de Charonne, 75011 Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.85328413758596,   longitude: 2.395992212883224),
            descriptiuon: "Epicerie Solidaire",
            eMail: "@:---",
            phoneNumber:"0143486822",
            Horaires: "Fermé",
            imageNames: ["400COOP1", "400COOP2"],
            link: "https://les400coop.fr/"),
        Location(
            name: "COOPALI",
            cityName: "Champigny-sur-Marne",
            Adresse:"38 rue du 19 mars 1962, 94500 Champigny-sur-Marne",
            coordinates: CLLocationCoordinate2D(latitude: 48.81103523809181,  longitude:  2.55561430235739),
            descriptiuon: "Epicerie Solidaire Autogéré",
            eMail: "contact@coopali.net-",
            phoneNumber:"0173000230",
            Horaires:"",
            imageNames: ["COOPALI1"],
            link: "http://coopali.net/site/"),
        Location(
            name: "Coopaname",
            cityName: "Paris 20",
            Adresse:"7 Rue Albert Marquet, 75020 Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.85783429004667,   longitude: 2.4045458556304187),
            descriptiuon: "Epicerie Solidaire",
            eMail: "coop@coopaname.coop",
            phoneNumber:"0143718269",
            Horaires: "\t\tLundi au vendredi \r\t\t10H00 - 18h00\r\t",
            imageNames: ["Coopaname1", "Coopaname2"],
            link: "https://www.coopaname.coop/"),
        Location(
            name: "Villejuifois Solidaire",
            cityName: "Villejuif",
            Adresse:"38 Sentier Benoît Malon, 94800 Villejuif",
            coordinates: CLLocationCoordinate2D(latitude: 48.7856695396387,   longitude:  2.3649916882632285),
            descriptiuon: "Epicerie Solidaire",
            eMail: "---",
            phoneNumber:"0672312344",
            Horaires: "\t\tLundi au vendredi \r\t\t10H00 - 18h00\r\t",
            imageNames: ["Villejuif 1", "Villejuif2"],
            link: "https://www.coopaname.coop/"),
    ]
    
}


//\tLundi\t\t\t Fermé\r\tMardi\t\t\t Fermé\r\tMercredi\t 19H00 - 21h00\r\tJeudi\t\t\t Fermé\r\tVendredi\t\t\t Fermé\r\tSamedi\t\ 10h00-12h00\r\tDimanche\t\t Fermé

//\tLundi\t\t\t Fermé\r\tMardi\t\t\t Fermé\r\tMercredi\t 19H00 - 21h00\r\tJeudi\t\t\t Fermé\r\tVendredi\t\t\t Fermé\r\tSamedi\t\10h00-12h00\r\tDimanche\t\t Fermé
