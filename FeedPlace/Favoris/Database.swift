//
//  Database.swift
//  enfin stp
//
//  Created by Sofiane Mulic on 07/12/2022.
//

import SwiftUI

final class Database{
    private let FAV_KEY = "fav_key"
    
    func save(items:Set<Int>) {
        let array = Array(items)
        UserDefaults.standard.set(array, forKey: FAV_KEY)
    }
    
    func load() -> Set <Int> {
        let array = UserDefaults.standard.array(forKey: FAV_KEY) as? [Int] ?? [Int]()
        return Set(array)
    }
}
