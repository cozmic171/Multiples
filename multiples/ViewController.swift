//
//  ViewController.swift
//  multiples
//
//  Created by Ben Graham on 1/05/2016.
//  Copyright © 2016 Ben Graham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var multiplesLogoImg: UIImageView!
    @IBOutlet weak var calculationLbl: UILabel!
    @IBOutlet weak var numberToMultiplyTxt: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var playBtn: UIButton!

    //Variables
    var numA = 0
    var maxGames = 10
    var numGames = 0
    
    @IBAction func playGame(sender: UIButton) {
        if numberToMultiplyTxt.text != nil && numberToMultiplyTxt.text != "" {
            multiplesLogoImg.hidden = true
            numberToMultiplyTxt.hidden = true
            playBtn.hidden = true
            calculationLbl.hidden = false
            addBtn.hidden = false
        }
    }

    @IBAction func addMultiplier(sender: UIButton) {
        numGames+=1
        if (numGames <= maxGames){
            let numB: Int = Int(numberToMultiplyTxt.text!)!
            calculationLbl.text = "\(numA) + \(numB) = " + String(numA + numB)
            numA+=numB
        } else {
            //reset game
            multiplesLogoImg.hidden = false
            numberToMultiplyTxt.hidden = false
            playBtn.hidden = false
            calculationLbl.hidden = true
            addBtn.hidden = true
            numGames = 0
            numA = 0
            numberToMultiplyTxt.text = ""
            calculationLbl.text = "Press Add to add!"
        }
    }

}

