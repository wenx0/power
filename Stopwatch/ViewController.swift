//
//  ViewController.swift
//  Stopwatch
//
//  Created by Rebecca Wang on 2/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TimerLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    
    var timer:Timer = Timer()
    var count:Int = 0
    var timerCounting:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.setTitleColor(UIColor.green, for: .normal)
    }

    @IBAction func resetTapped(_ sender: Any) {
        let alert = UIAlertController(title: "reset timer?", message: "are you sure you want to reset the timer?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: { (_) in
            // don't do anything, user cancelled
        }))
        
        alert.addAction(UIAlertAction(title: "yes", style: .default, handler: { (_) in
            self.count = 0
            self.timer.invalidate()
            self.TimerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
            self.startButton.setTitle("start", for: .normal)
            self.startButton.setTitleColor(UIColor.green, for: .normal)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func startTapped(_ sender: Any) {
        if (timerCounting) {
            timerCounting = false
            timer.invalidate()
            startButton.setTitle("start", for: .normal)
            startButton.setTitleColor(UIColor.green, for: .normal)
        } else {
            timerCounting = true
            startButton.setTitle("stop", for: .normal)
            startButton.setTitleColor(UIColor.red, for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
        }
    }
    
    @objc func timerCounter() -> Void {
        count = count + 1
        let time = secondsToHoursMinutesSeconds(seconds: count)
        let timeString = makeTimeString(hours: time.0, minutes: time.1, seconds:time.2)
        TimerLabel.text = timeString
    }
    
    func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int) {
        return ((seconds / 3600), ((seconds % 3600) / 60), ((seconds % 3600) % 60))
    }
    
    func makeTimeString(hours: Int, minutes: Int, seconds: Int) -> String {
        var timeString = ""
        timeString += String(format: "%02d", hours)
        timeString += " : "
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String(format: "%02d", seconds)
        return timeString
    }
    
}

