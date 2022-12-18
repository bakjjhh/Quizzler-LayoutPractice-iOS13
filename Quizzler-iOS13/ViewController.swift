//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var QuestionLable: UILabel!
    @IBOutlet weak var trueButtonPressed: UIButton!
    @IBOutlet weak var falseButtonPressed: UIButton!
    
    
    let quiz = [["2+4=6" , "true"],
                 ["3+5=9" , "false"],
                 ["5+4=9", "true"]
                ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    
    @IBAction func answerButtonPressed(_ sender:UIButton){
        
        questionNumber += 1
        updateUI()
    }
    
    
    func updateUI(){
        //QuestionLable.text = quiz[questionNumber]
    }

}

