//
//  Character.swift
//  HW_R&M_Characters_LatushkinAS
//
//  Created by Артём Латушкин on 07.05.2023.
//

import Foundation

struct Character: Decodable {
    let id: Double
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: Origin
    let location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

struct Origin: Decodable {
    let name: String
    let url: String
}

struct Location: Decodable {
    let name: String
    let url: String
}
