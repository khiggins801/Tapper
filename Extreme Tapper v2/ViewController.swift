//
//  ViewController.swift
//  Extreme Tapper v2
//
//  Created by Kathy Higgins on 4/28/16.
//  Copyright © 2016 ColoApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //var
    
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //Outlets
    
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    
    @IBOutlet weak var tapsLbl: UILabel!
    @IBOutlet weak var tapBtn: UIButton!
    
    @IBAction func onCoinTapped(sender: UIButton) {
        
        currentTaps += 1
        updateTapsLbl()
        
        if isGameOver() {
            
            restartGame()
        }
        
    }

    @IBAction func onPlayBtnPressed(sender: UIButton) {
     
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
       
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
        
            tapsLbl.hidden = false
            tapBtn.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
            
            
        }
        
    }
    
    func restartGame() {
        
        maxTaps = 0
        howManyTapsTxt.text = ""
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapsLbl.hidden = true
        tapBtn.hidden = true
        
    }
    
    func updateTapsLbl() {
        
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
}

