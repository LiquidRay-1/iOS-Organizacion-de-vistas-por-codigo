//
//  ViewController.swift
//  Rick&Morty
//
//  Created by dam2 on 11/1/24.
//

import UIKit

class ViewController: UIViewController {

    //Propiedad que contine el UITableView
    var mainView: CharacterListView { self.view as! CharacterListView }
    
    //Propiedad para realizar la petición HTTP
    var apiClient = ListOfCharacterAPIClient()
    
    private var tableViewDataSource: ListOfCharactersTableViewDataSource?
    private var tableViewDelegate: ListOfCharactersTableViewDelegate?
    
    override func loadView() {
        view = CharacterListView()
        
        tableViewDataSource = ListOfCharactersTableViewDataSource(tableView: mainView.characterTableView)
        mainView.characterTableView.dataSource = tableViewDataSource
        tableViewDelegate = ListOfCharactersTableViewDelegate()
        mainView.characterTableView.delegate = tableViewDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Personajes"
        
        Task {
            let characters = await apiClient.getListOfCharacters().results
            print("Personajes: \(characters)")
            tableViewDataSource?.set(characters: characters)
        }
        
        //Obtener el índice de la celda pulsada y el modelo correspondiente a partir del array del DataSource.
        tableViewDelegate?.didTapOnCell = { [weak self] index in
            print("Index \(index)")
            
            //Presentamos el CharacterDetailViewController
            guard let dataSource = self?.tableViewDataSource else { return }
            
            let characterModel = dataSource.characters[index]
            let characterDetailViewController = CharacterDetailViewController(characterDetailModel: characterModel)
            self!.present(characterDetailViewController, animated: true)
        }
    }


}

