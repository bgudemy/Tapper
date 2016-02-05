//
//  ViewController.swift
//  Tapper
//
//  Created by Brian J Glowe on 2/4/16.
//  Copyright © 2016 BG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps = 0
    var currentTaps = 0

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapsBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: UIButton) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playBtn.hidden = true
            
            tapsBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }

    @IBAction func tapsBtnPressed(sender: UIButton!) {
        currentTaps++
        updateTapsLabel()
        
        if gameover() {
            restartGame()
        }
    }
    
    func restartGame() {
        logoImg.hidden = false
        howManyTapsTxt.hidden = false
        howManyTapsTxt.text = ""
        playBtn.hidden = false
        
        tapsBtn.hidden = true
        tapsLbl.hidden = true
        
        
    }
    
    func gameover() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
 
    func updateTapsLabel() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
}

