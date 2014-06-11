//
//  ViewController.swift
//  GBFlatButtonSwiftExample
//
//  Created by Gustavo Barbosa on 6/10/14.
//  Copyright (c) 2014 Gustavo Barbosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var pinkButton: GBFlatButton?
    @IBOutlet var yellowButton: GBFlatButton?
    @IBOutlet var orangeButton: GBFlatButton?
    @IBOutlet var greenButton: GBFlatButton?
    @IBOutlet var blueButton: GBFlatButton?
    @IBOutlet var purpleButton: GBFlatButton?
    
    @IBOutlet var selectedPinkButton: GBFlatButton?
    @IBOutlet var selectedYellowButton: GBFlatButton?
    @IBOutlet var selectedOrangeButton: GBFlatButton?
    @IBOutlet var selectedGreenButton: GBFlatButton?
    @IBOutlet var selectedBlueButton: GBFlatButton?
    @IBOutlet var selectedPurpleButton: GBFlatButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var blackButton = GBFlatSelectableButton(frame: CGRect(x: 0, y: 0, width: 80, height: 40))
        blackButton.tintColor = UIColor.blackColor()
        blackButton.setTitle("black", forState: UIControlState.Normal)
        blackButton.center = self.view.center
        blackButton.frame.origin.y -= 30
        self.view.addSubview(blackButton)
        
        var redButton = GBFlatSelectableButton(frame: CGRect(x: 0, y: 0, width: 80, height: 40))
        redButton.tintColor = UIColor.redColor()
        redButton.setTitle("red", forState: UIControlState.Normal)
        redButton.center = self.view.center
        redButton.frame.origin.y += 30
        self.view.addSubview(redButton)

        selectedPinkButton!.selected = true
        selectedYellowButton!.selected = true
        selectedOrangeButton!.selected = true
        selectedGreenButton!.selected = true
        selectedBlueButton!.selected = true
        selectedPurpleButton!.selected = true
    }
}
