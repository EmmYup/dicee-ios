//
//  ViewController.swift
//  Dicee
//
//  Created by Emmanuel Yupit on 6/11/18.
//  Copyright © 2018 Emmanuel Yupit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray : Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        diceImageView1.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
        diceImageView2.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

