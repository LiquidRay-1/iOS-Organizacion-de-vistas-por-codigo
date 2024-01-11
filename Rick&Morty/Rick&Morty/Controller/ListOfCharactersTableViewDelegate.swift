//
//  ListOfCharactersTableViewDelegate.swift
//  Rick&Morty
//
//  Created by dam2 on 11/1/24.
//

import UIKit

final class ListOfCharactersTableViewDelegate: NSObject, UITableViewDelegate {
    
    var didTapOnCell: ((Int) -> Void)?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapOnCell?(indexPath.row)
    }
    
}
