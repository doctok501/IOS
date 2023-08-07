//
//  ViewController.swift
//  DiceGame
//
//  Created by 김인겸 on 2023/07/12.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstImageView: UIImageView!
    
    
    @IBOutlet weak var secondImageView: UIImageView!
    
    
    var diceArray :[UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstImageView.image = diceArray[1]
        secondImageView.image = diceArray[1]
    }

    
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        //주사위 이미지 변경
        firstImageView.image = diceArray.randomElement()
        
        secondImageView.image = diceArray.randomElement()
        
         
        
        
    }
    
    
}

