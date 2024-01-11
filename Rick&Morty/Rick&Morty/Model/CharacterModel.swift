//
//  CharacterModel.swift
//  Rick&Morty
//
//  Created by dam2 on 11/1/24.
//

import Foundation

struct CharacterModel: Decodable {
    let name: String
    let status: String
    let species: String
    let image: String
    let gender: String
    let type: String
}
