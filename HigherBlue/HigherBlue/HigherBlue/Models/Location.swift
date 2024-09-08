//
//  Location.swift
//  HigherBlue
//
//  Created by Kensuke Fukutomi on 2024/09/08.
//

import Foundation
import CoreLocation

struct Location: Identifiable{
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    var id: String {
        // name = "Colosseum"
        // cityName = "Rome"
        // id = ColosseumRome
        name + cityName
    }
}
