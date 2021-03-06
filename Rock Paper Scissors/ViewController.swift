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
var selected = 0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rockButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        paperButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        scissorsButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        wins.text = String(winCount)
        losses.text = String(lossCount)
        alerts.text = ""
    }

    @IBOutlet weak var rockButton: UIButton!
    @IBAction func rockChosen(_ sender: Any)
    {
        rockButton.backgroundColor = UIColor.init(red: 0.69, green: 0.89, blue: 0.65, alpha: 1)
        paperButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        scissorsButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        
        selected = 1
    }
    
    @IBOutlet weak var paperButton: UIButton!
    @IBAction func paperChosen(_ sender: Any)
    {
        paperButton.backgroundColor = UIColor.init(red: 0.69, green: 0.89, blue: 0.65, alpha: 1)
        rockButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        scissorsButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        
        selected = 2
    }
    
    @IBOutlet weak var scissorsButton: UIButton!
    @IBAction func scissorsChosen(_ sender: Any)
    {
        scissorsButton.backgroundColor = UIColor.init(red: 0.69, green: 0.89, blue: 0.65, alpha: 1)
        paperButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        rockButton.backgroundColor = UIColor.init(red: 1, green: 0.64, blue: 0.47, alpha: 1)
        
        selected = 3
    }
    
    @IBAction func playChosen(_ sender: Any)
    {
        //1 = rock
        //2 = paper
        //3 = scissors
        
        
        var randomInt = Int.random(in:1...3)
        
        if randomInt == 1 && selected != 0
        {
            computerChose.text = "Rock"
            
            if selected == 2
            {
                winCount += 1
                alerts.text = ""
            }
            else if selected == 3
            {
                lossCount += 1
                alerts.text = ""
            }
            else if selected == 1
            {
                alerts.text = "tie"
            }
        }else if randomInt == 2 && selected != 0
        {
            computerChose.text = "Paper"
            
            if selected == 1
            {
                lossCount += 1
                alerts.text = ""
            }
            else if selected == 3
            {
                winCount += 1
                alerts.text = ""
            }
            else if selected == 2
            {
                alerts.text = "tie"
            }
        }else if randomInt == 3 && selected != 0
        {
            computerChose.text = "Scissors"
            
            if selected == 1
            {
                winCount += 1
                alerts.text = ""
            }
            else if selected == 2
            {
                lossCount += 1
                alerts.text = ""
            }
            else if selected == 3
            {
                alerts.text = "tie"
            }
        }
        
        if selected == 1
        {
            youChose.text = "Rock"
        }else if selected == 2
        {
            youChose.text = "Paper"
        }else if selected == 3
        {
            youChose.text = "Scissors"
        }else
        {
            youChose.text = ""
            alerts.text = "Please select a move"
        }
        
        wins.text = String(winCount)
        losses.text = String(lossCount)
        
    }
    
    @IBOutlet weak var youChose: UILabel!
    @IBOutlet weak var computerChose: UILabel!
    @IBOutlet weak var wins: UILabel!
    @IBOutlet weak var losses: UILabel!
    @IBOutlet weak var alerts: UILabel!
    
    
}

