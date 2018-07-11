//
//  ViewController.swift
//  Dicee
//
//  Created by KATHMANDU on 6/25/18.
//  Copyright © 2018 KATHMANDU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomdiceIndex2 : Int = 0

    let dicePictures = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // This runs whenever the app loads
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    // create a new function
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomdiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: dicePictures[randomDiceIndex1])
        diceImageView2.image = UIImage(named: dicePictures[randomdiceIndex2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

