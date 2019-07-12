//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
//    let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[0]
//    let emojis = ["📀": "CD", "🔮": "Crystal Ball"]
//    let customMessages = [ "CD" : ["Don't scratch me!", "I contain all of your favorite songs!", "Play me on repeat!"], "Crystal Ball" : ["Your future looks bright!", "You will succeed at your next code challenge!", "Future telling abilities don't work right now, please try again later!"]]
//
        override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
    
        let number = Int.random(in: 0...3)
        let emojis = ["📀": "CD", "🔮": "Crystal Ball"]
        let customMessages = [ "CD" : ["Don't scratch me!", "I contain all of your favorite songs!", "Play me on repeat!"], "Crystal Ball" : ["Your future looks bright!", "You will succeed at your next code challenge!", "Future telling abilities don't work right now, please try again later!"]]
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
        
        let alertController = UIAlertController (title: "Welcome to Emojional!", message: "\(emojiMessage!)", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present (alertController, animated: true, completion: nil)
        
       
        
        
        
    
      
}

}
