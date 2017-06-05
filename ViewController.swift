//
//  ViewController.swift
//  Dicey
//
//  Created by MV Braverman on 6/5/17.
//  Copyright © 2017 brvrmn.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDice()
    }

    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDice()
    }
    
    func updateDice() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6)) + 1
        randomDiceIndex2 = Int(arc4random_uniform(6)) + 1
        
        diceImage1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImage2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDice()
        
    }
}

