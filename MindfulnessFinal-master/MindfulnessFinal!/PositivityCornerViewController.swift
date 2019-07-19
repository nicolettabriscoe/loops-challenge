//
//  PositivityCornerViewController.swift
//  toDoList
//
//  Created by Nicoletta Briscoe on 7/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class PositivityCornerViewController: UIViewController {
    
    let numbers = ["1-2": "awful", "3-4":"bad", "5-6":"okay", "7-8":"good", "9-10":"great"]
    
    let customMessages = ["awful":["It's okay to feel down. Take some time for yourself, everything will be okay<3","Go buy yourself a cookie and watch your favorite show! You deserve a pick me up :)","Tomorrow is a new day. Don't forget how amazing you are!"], "bad":["We're sorry you're feeling down. Take a break from what's making you upset and listen to some calming music or take an enjoyable walk outside.", "It's important to take care of yourself when you aren't feeling your best. Don't pressure yourself into forcing a smile, your feelings are valid!", "Go google puns, or call someone you love and have a good laugh. Joking around might lift your spirits!"], "okay":["It can be helpful to think about the reason behind your emotions. Try focusing on yourself more and doing something you love.","You should talk to someone you trust about how you're feeling. Deep connections are just as important as you are!","You are in charge of your own happiness and your own outlook. You have the power to make your day better!"], "good":["Great! Keep your head high and always look for more things to find joy in!","Reflect on what's made this day so positive, and remember it for the next time you're feeling down!","Use your positive power to impact others, and make someone's day!"], "great":["Yay! Keep up the positivity!", "The world is happy to have your bright attitude today!", "Keep on smiling, and spread the love!"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessage(sender: UIButton){
        let selectedEmotion = sender.titleLabel?.text
        let random = Int.random(in: 0 ... 2)
        let emojiMessage = customMessages[numbers[selectedEmotion!]!]?[random]
        let alertController = UIAlertController(title: "Hi! I think...", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "okay!", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil
        )
    }
    
}



