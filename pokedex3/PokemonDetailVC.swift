//
//  PokemonDetailVC.swift
//  pokedex3
//
//  Created by Paul Desamero on 6/24/17.
//  Copyright © 2017 PJDesi. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemonCharacter: Pokemon!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    @IBOutlet weak var typeLbl: UILabel!
    
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseAttackLbl: UILabel!
    
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    @IBOutlet weak var evoLbl: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemonCharacter.name
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
