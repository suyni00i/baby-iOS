//
//  QuizViewController.swift
//  QuizApp
//
//  Created by 하수연 on 11/12/23.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var quizLabel: UILabel!
    
    @IBOutlet weak var quizAnswer0: UIButton!
    @IBOutlet weak var quizAnswer1: UIButton!
    @IBOutlet weak var quizAnswer2: UIButton!
    @IBOutlet weak var quizAnswer3: UIButton!
    
    
    var currentQuiz: Int = 0
    let quiz: [(String, [String], Int)] = [
        ("하수연의 나이는?", ["20", "21", "22", "23"], 2),
        ("하수연의 생일은?", ["9/1", "10/1", "11/1", "12/1"], 1),
        ("하수연의 본전공은?", ["GBT", "BTG", "TGB", "GGG"], 0),
        ("하수연의 이중전공은?", ["융인", "스통", "GBT", "컴공"], 3),
    ]
    
    var answer: [Int] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showQuiz()
    }
    
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
        answer.append(sender.tag)
        currentQuiz += 1
        showQuiz()
    }
    
    func showQuiz() {
        if currentQuiz >= quiz.count {
            self.performSegue(withIdentifier: "showResult", sender: self)
            return
        }
        let currentQuizInfo = quiz[currentQuiz]
        quizLabel.text = currentQuizInfo.0
        quizAnswer0.setTitle(currentQuizInfo.1[0], for: .normal)
        quizAnswer1.setTitle(currentQuizInfo.1[1], for: .normal)
        quizAnswer2.setTitle(currentQuizInfo.1[2], for: .normal)
        quizAnswer3.setTitle(currentQuizInfo.1[3], for: .normal)
    }
}
