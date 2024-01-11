//
//  CharacterDetailViewController.swift
//  Rick&Morty
//
//  Created by dam2 on 11/1/24.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    var mainView: CharacterDetailView { self.view as! CharacterDetailView }
    
    override func loadView() {
        view = CharacterDetailView()
    }

    init(characterDetailModel: CharacterModel){
        super.init(nibName: nil, bundle: nil)
        mainView.configure(characterDetailModel)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) no está implementado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
