//
//  ViewController.swift
//  stop wache01
//
//  Created by D7703_07 on 2019. 4. 3..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var timeLabel: UILabel!
    
    var count = 0
    var myTimer = Timer()
    var timer_running = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLabel.text = String(count)
    
    }
    @IBAction func starBtnPressed(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        timer_running = true
    }
    
    @IBAction func pauseBtnPressed(_ sender: Any) {
        myTimer.invalidate()
    }
    @IBAction func stopBtnPressed(_ sender: Any) {
        myTimer.invalidate()
        count = 0
        timeLabel.text = String(count)
    }
    @objc func updateTime(){
        count += 1
        timeLabel.text = String(count)
    }
    
}

