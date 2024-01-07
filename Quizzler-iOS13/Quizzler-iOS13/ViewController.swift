//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBoutlet
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseBUtton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six.",  "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    
    var qusetionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        
    }
//MARK: - IBAction
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True False
        let actualAnswer = quiz[qusetionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Wrong")
        }
        
        if qusetionNumber + 1 < quiz.count{
            qusetionNumber += 1
        } else {
            qusetionNumber = 0
        }
        
        updateUI()
    }
    
    
    //MARK: - function
    
    func updateUI () {
        questionLabel.text = quiz[qusetionNumber][0]
    }
}

