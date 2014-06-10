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

        selectedPinkButton!.selected = true
        selectedYellowButton!.selected = true
        selectedOrangeButton!.selected = true
        selectedGreenButton!.selected = true
        selectedBlueButton!.selected = true
        selectedPurpleButton!.selected = true
    }
}
