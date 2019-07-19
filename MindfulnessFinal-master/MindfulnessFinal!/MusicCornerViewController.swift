//
//  MusicCornerViewController.swift
//  toDoList
//
//  Created by Nicoletta Briscoe on 7/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class MusicCornerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func relaxingPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=lFcSrYw-ARY&t=3078s")! as URL, options : [:], completionHandler: nil)
        //completion handler basicaly tells whatever the action is in swift that its done! so its a callback function.
    }
    
    
    
    
    @IBAction func jazzPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=1ykIPO5g7MM&t=4593s")! as URL, options : [:], completionHandler: nil)
    }
    
    @IBAction func happyPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=NvZtkt9973A&t=3371s")! as URL, options : [:], completionHandler: nil)
    }
    
    @IBAction func classicalPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=mIYzp5rcTvU&t=16s")! as URL, options : [:], completionHandler: nil)
    }
    
    @IBAction func sleepyPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=HtPCi-3VnB0&t=57s")! as URL, options : [:], completionHandler: nil)
    }
    
}
