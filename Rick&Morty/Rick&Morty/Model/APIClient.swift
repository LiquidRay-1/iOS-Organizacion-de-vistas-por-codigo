//
//  APIClient.swift
//  Rick&Morty
//
//  Created by dam2 on 11/1/24.
//

import Foundation

final class ListOfCharacterAPIClient {
    func getListOfCharacters() async -> CharacterModelResponse {
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(CharacterModelResponse.self, from: data)
    }
}
