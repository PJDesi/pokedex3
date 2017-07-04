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

        nameLabel.text = pokemonCharacter.name.capitalized
        
        let img = UIImage(named: "\(pokemonCharacter.pokedexId)")
        
        mainImg.image = img
        currentEvoImg.image = img
        pokedexLbl.text = "\(pokemonCharacter.pokedexId)"
        
        
        pokemonCharacter.downloadPokemonDetail {
            
            // whatever we write will only be called after the network call is complete!
            self.updateUI()
        }
    }
    
    func updateUI() {
        descriptionLbl.text = pokemonCharacter.description
        baseAttackLbl.text = pokemonCharacter.attack
        defenseLbl.text = pokemonCharacter.defense
        heightLbl.text = pokemonCharacter.height
        weightLbl.text = pokemonCharacter.weight
        typeLbl.text = pokemonCharacter.type
        
        if pokemonCharacter.nextEvolutionId == "" {
        
            evoLbl.text = "No Evolutions"
            nextEvoImg.isHidden = true
        
        } else {
            
            nextEvoImg.isHidden = false
            nextEvoImg.image = UIImage(named: pokemonCharacter.nextEvolutionId)
            let str = "Next Evolution: \(pokemonCharacter.nextEvolutionName) - LVL \(pokemonCharacter.nextEvolutionLevel)"
            evoLbl.text = str
            
        }
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
