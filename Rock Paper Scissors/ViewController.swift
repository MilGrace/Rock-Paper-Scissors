//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by  on 4/27/22.
//

import UIKit

class ViewController: UIViewController {
var winCount = 0
var lossCount = 0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rockButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        paperButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        scissorsButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        wins.text = String(winCount)
        losses.text = String(lossCount)
    }

    @IBOutlet weak var rockButton: UIButton!
    @IBAction func rockChosen(_ sender: Any)
    {
        rockButton.backgroundColor = UIColor.init(red: 0.69, green: 0.89, blue: 0.65, alpha: 1)
        paperButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        scissorsButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
    }
    
    @IBOutlet weak var paperButton: UIButton!
    @IBAction func paperChosen(_ sender: Any)
    {
        paperButton.backgroundColor = UIColor.init(red: 0.69, green: 0.89, blue: 0.65, alpha: 1)
        rockButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        scissorsButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
    }
    
    @IBOutlet weak var scissorsButton: UIButton!
    @IBAction func scissorsChosen(_ sender: Any)
    {
        scissorsButton.backgroundColor = UIColor.init(red: 0.69, green: 0.89, blue: 0.65, alpha: 1)
        paperButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        rockButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
    }
    
    @IBAction func playChosen(_ sender: Any)
    {
        
    }
    
    @IBOutlet weak var youChose: UILabel!
    @IBOutlet weak var computerChose: UILabel!
    @IBOutlet weak var wins: UILabel!
    @IBOutlet weak var losses: UILabel!
    
    
    
}

