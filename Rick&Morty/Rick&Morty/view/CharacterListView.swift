//
//  CharacterListView.swift
//  Rick&Morty
//
//  Created by dam2 on 11/1/24.
//

import UIKit

class CharacterListView: UIView {

    let characterTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        //Registramos la celda en la tabla
        tableView.register(CharacterListCellView.self, forCellReuseIdentifier: "CharacterListCellView")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) no está implmentado")
    }
    
    func setupView(){
        addSubview(characterTableView)
        NSLayoutConstraint.activate([
            characterTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            characterTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            characterTableView.topAnchor.constraint(equalTo: topAnchor),
            characterTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

}
