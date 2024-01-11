//
//  CharacterDetailView.swift
//  Rick&Morty
//
//  Created by dam2 on 11/1/24.
//

import UIKit

class CharacterDetailView: UIView {
    
    let characterImageView: UIImageView = {
       let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()

    let characterName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterStatus: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterSpecie: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterType: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterGender: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) no está implementado")
    }
    
    func setupViews(){
        
        backgroundColor = .white
        
        addSubview(characterImageView)
        addSubview(characterName)
        addSubview(characterSpecie)
        addSubview(characterStatus)
        addSubview(characterType)
        addSubview(characterGender)
        
        NSLayoutConstraint.activate([

            characterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 95),
            characterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            characterImageView.heightAnchor.constraint(equalToConstant: 200),
            characterImageView.widthAnchor.constraint(equalToConstant: 200),
                    
            characterName.leadingAnchor.constraint(equalTo: characterImageView.leadingAnchor),
            characterName.topAnchor.constraint(equalTo: characterImageView.bottomAnchor, constant: 80),
            
            characterStatus.leadingAnchor.constraint(equalTo: characterName.leadingAnchor),
            characterStatus.topAnchor.constraint(equalTo: characterName.bottomAnchor, constant: 20),
                    
            characterSpecie.leadingAnchor.constraint(equalTo: characterName.leadingAnchor),
            characterSpecie.topAnchor.constraint(equalTo: characterStatus.bottomAnchor, constant: 20),
            
            characterGender.leadingAnchor.constraint(equalTo: characterName.leadingAnchor),
            characterGender.topAnchor.constraint(equalTo: characterSpecie.bottomAnchor, constant: 20),
            
            characterType.leadingAnchor.constraint(equalTo: characterName.leadingAnchor),
            characterType.topAnchor.constraint(equalTo: characterGender.bottomAnchor, constant: 20)
        ])
    }
    
    func configure(_ model: CharacterModel) {
        self.characterName.text = "Nombre: " + model.name
        self.characterSpecie.text = "Especie: " + model.species
        self.characterStatus.text = "Estatus: " + model.status
        self.characterType.text = "Tipo: " + model.type
        self.characterGender.text = "Género: " + model.gender
        self.characterImageView.kf.setImage(with: URL(string: model.image))
    }
}
