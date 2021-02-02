//
//  ViewController.swift
//  WarCardGame
//
//  Created by Ashish Rao on 29/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!

    @IBOutlet weak var rightImageView: UIImageView!

    @IBOutlet weak var leftScoreLabel: UILabel!

    @IBOutlet weak var rightScoreLabel: UILabel!

    var leftScore: Int = 0
    var rightScore: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {

        // Randomize numbers
        let leftNumber: Int = Int.random(in: 2...14)
        let rightNumber: Int = Int.random(in: 2...14)

        // update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")

        // Compare the random numbers
        if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        } else {
            // Tie
        }
    }
}

