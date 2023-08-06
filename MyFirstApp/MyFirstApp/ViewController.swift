//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 김인겸 on 2023/05/02.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    //앱 실행시 처음 보이는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        mainLabel.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        
        mainLabel.text = "안녕하세요"
        
        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        mainLabel.textAlignment = NSTextAlignment.center
        
        myButton.backgroundColor = UIColor.blue
        myButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
    }
    
    
    
}

