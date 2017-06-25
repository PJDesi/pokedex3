//
//  PokemonDetailVC.swift
//  pokedex3
//
//  Created by Paul Desamero on 6/24/17.
//  Copyright © 2017 PJDesi. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemonCharacter: Pokemon!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemonCharacter.name
    }


}
