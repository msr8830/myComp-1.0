//
//  ViewController.swift
//  myComp Planner
//
//  Created by Muhammad Raza on 5/21/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var eliteValue: UILabel!
    @IBOutlet weak var nextUpValue: UILabel!
    @IBOutlet weak var eliteStep: UIStepper!
    @IBOutlet weak var nextUpStep: UIStepper!
    @IBOutlet weak var tabWatchStep: UIStepper!
    @IBOutlet weak var prepaidStep: UIStepper!
    @IBOutlet weak var attTvStep: UIStepper!
    @IBOutlet weak var ppvStep: UIStepper!
    @IBOutlet weak var upgradeStep: UIStepper!
    @IBOutlet weak var totalValue: UILabel!
    @IBOutlet weak var upgradeValue: UILabel!
    @IBOutlet weak var ppvValue: UILabel!
    @IBOutlet weak var attTvValue: UILabel!
    @IBOutlet weak var prepaidValue: UILabel!
    @IBOutlet weak var tabWatchValue: UILabel!
    var calcTotal = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func upgradeStepper(_ sender: UIStepper) {
        upgradeValue.text = String(Int(sender.value))
        calcTotal += 5
        totalValue.text = String(Int(calcTotal))
    }
    
    @IBAction func ppvStepper(_ sender: UIStepper) {
        ppvValue.text = String(Int(sender.value))
        calcTotal += 15
        totalValue.text = String(Int(calcTotal))
        
    }
    
    @IBAction func attTvStepper(_ sender: UIStepper) {
        attTvValue.text = String(Int(sender.value))
        calcTotal += 70
        totalValue.text = String(Int(calcTotal))
    }
    
    @IBAction func prepaidStepper(_ sender: UIStepper) {
        prepaidValue.text = String(Int(sender.value))
        calcTotal += 10
        totalValue.text = String(Int(calcTotal))
    }
    
    @IBAction func tabWatchStepper(_ sender: UIStepper) {
        tabWatchValue.text = String(Int(sender.value))
        calcTotal += 5
        totalValue.text = String(Int(calcTotal))
    }
    
    @IBAction func nextUpStepper(_ sender: UIStepper) {
        nextUpValue.text = String(Int(sender.value))
        calcTotal += 3
        totalValue.text = String(Int(calcTotal))
    }
    @IBAction func eliteStepper(_ sender: UIStepper) {
        eliteValue.text = String(Int(sender.value))
        calcTotal += 5
        totalValue.text = String(Int(calcTotal))
    }
    @IBAction func resetPressed(_ sender: UIButton) {
        upgradeStep.value = 0
        upgradeValue.text = "0"
        ppvStep.value = 0
        ppvValue.text = "0"
        attTvStep.value = 0
        attTvValue.text = "0"
        prepaidStep.value = 0
        prepaidValue.text = "0"
        tabWatchStep.value = 0
        tabWatchValue.text = "0"
        totalValue.text = "0"
        nextUpStep.value = 0
        nextUpValue.text = "0"
        eliteStep.value = 0
        eliteValue.text = "0"
        calcTotal = 0
    }
}

