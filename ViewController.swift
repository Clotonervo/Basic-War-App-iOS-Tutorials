//
//  ViewController.swift
//  WarCardGame
//
//  Created by Sam Hopkins on 5/1/19.
//  Copyright © 2019 Sam Hopkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var cpuScore: UILabel!
    
    var leftScore:Int = 0;
    var rightScore:Int = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        print(leftNumber)
        let rightNumber = Int.random(in: 2...14)
        print(rightNumber)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            leftScore += 1
            playerScore.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            rightScore += 1
            cpuScore.text = String(rightScore)
        }
        else {
            
        }
        
    }
    
}

