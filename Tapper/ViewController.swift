//
//  ViewController.swift
//  Tapper
//
//  Created by Brian J Glowe on 2/4/16.
//  Copyright © 2016 BG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapsBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: UIButton) {
        logoImg.hidden = true
        howManyTapsTxt.hidden = true
        playBtn.hidden = true
        
        tapsBtn.hidden = false
        tapsLbl.hidden = false
    }

}

