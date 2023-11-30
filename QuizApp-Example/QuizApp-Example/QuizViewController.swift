//
//  QuizViewController.swift
//  QuizApp-Example
//
//  Created by 이전희 on 11/12/23.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var quizLabel: UILabel!
    
    @IBOutlet weak var answerBtn00: UIButton!
    @IBOutlet weak var answerBtn01: UIButton!
    @IBOutlet weak var answerBtn02: UIButton!
    @IBOutlet weak var answerBtn03: UIButton!
    
    var currentQuiz: Int = 0
    let quiz: [(String,[String], Int)] = [
        ("하수연의 생일은?", ["09/01", "10/01", "10/22", "12/1"], 1),
        ("하수연의 나이는?", ["20", "21", "22", "23"], 2),
        ("하수연의 본전공은??", ["GBT", "BTG", "컴퓨터공학부", "TGB"], 0),
        ("하수연의 이중전공은?", ["용인", "스통", "GBT", "컴공"], 3)
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
            self.performSegue(withIdentifier: "showResult",
                              sender: self)
            return
        }
        let currentQuzeInfo = quiz[currentQuiz]
        quizLabel.text = currentQuzeInfo.0
       
        answerBtn00.setTitle(currentQuzeInfo.1[0], for: .normal)
        answerBtn01.setTitle(currentQuzeInfo.1[1], for: .normal)
        answerBtn02.setTitle(currentQuzeInfo.1[2], for: .normal)
        answerBtn03.setTitle(currentQuzeInfo.1[3], for: .normal)
    }
}
