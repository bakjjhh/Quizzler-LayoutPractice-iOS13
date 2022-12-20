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
    
    var quizBrain = QuizBrain()
    
    
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    
    @IBAction func answerButtonPressed(_ sender:UIButton){
        
        
        let userAnswer = sender.currentTitle!
        var quizAnswer = quizBrain.checkAnswer(userAnswer)
        
       
        
        if quizAnswer == true {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        
        
        
        quizBrain.nextQuestion()
        
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(buttonColorChange), userInfo: nil, repeats: false)
        updateUI()
    }
    
    
    @objc func buttonColorChange() {
        trueButtonPressed.backgroundColor = UIColor.clear
        falseButtonPressed.backgroundColor = UIColor.clear
    }

    
    
   func updateUI(){
       QuestionLable.text = quizBrain.getQuestionText()
       
       progressBar.progress = quizBrain.getProgress()
       }
       

}

