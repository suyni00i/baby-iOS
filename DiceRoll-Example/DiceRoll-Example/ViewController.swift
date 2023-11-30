//
//  ViewController.swift
//  DiceRoll-Example
//
//  Created by 이전희 on 11/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let images: [UIImage] = [
    UIImage(named: "dice-1")!,
    UIImage(named: "dice-2")!,
    UIImage(named: "dice-3")!,
    UIImage(named: "dice-4")!,
    UIImage(named: "dice-5")!,
    UIImage(named: "dice-6")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = images[2]
    }

    @IBAction func rollDiceButtonAction(_ sender: Any) {
        let num = Int.random(in: 0...5)
        print(num)
    }
    
}

