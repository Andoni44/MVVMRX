//
//  Restaurant.swift
//  MVVMRX
//
//  Created by Andoni Da silva on 13/3/21.
//

import Foundation

struct Restaurant: Codable {
    let name: String
    let cuisine: Cuisine
}

enum Cuisine: String, Codable {
    case european
    case indian
    case french
    case mexican
    case english
}
