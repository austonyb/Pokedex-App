//
//  Pokemon.swift
//  Pokedex
//
//  Created by Auston Youngblood on 12/20/22.
//

import Foundation

struct Pokemon: Decodable {
    let name: String
    let id: Int
    let sprites: SpriteObject
}

struct SpriteObject: Decodable {
    let classicSpriteURL: URL
    let shinySpriteURL: URL
    
    enum CodingKeys: String, CodingKey {
        case classicSpriteURL = "front_default"
        case shinySpriteURL = "front_shiny"
    }
}
