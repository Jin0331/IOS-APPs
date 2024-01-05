//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        diceImageView1.image = UIImage(named: "DiceSix")
//        diceImageView2.image = UIImage(named: "DiceTwo")
//
//    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let dictArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        
        diceImageView1.image = dictArray[Int.random(in: 0...5)]
        diceImageView2.image = dictArray[Int.random(in: 0...5)]

    }
 
    

}

