//
//  ViewController.swift
//  RPSGame
//
//  Created by 김인겸 on 2023/08/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    
    var comChoice : Rps = Rps(rawValue: Int.random(in: 0...2))!
    var myChoice : Rps = Rps.rock
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
                
        
        
    }

    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        
        
        let title = sender.currentTitle!
        print(title)
        
        switch title{
        case "가위":
            myChoice = Rps.scissors
        case"바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        default:
            break
        }
        
    }
    
 
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        mainLabel.text = "CHOOSE!"
        
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
        
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        switch comChoice {
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
            
    
        }
        switch myChoice {
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
            
    
        }
        
        if comChoice == myChoice {
            mainLabel.text = "비김ㅋ"
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "유윈ㅋ"
        } else if comChoice == .scissors && myChoice == .rock {
            mainLabel.text = "유윈ㅋ"
        } else if comChoice == .paper && myChoice == .scissors {
            mainLabel.text = "유윈ㅋ"
        } else {
            mainLabel.text = "ㅋ"
        }
        
        
    }
    

}



