//
//  MenuViewController.swift
//  iDot3x
//
//  Created by Tomas Kristjansson on 28/01/16.
//  Copyright © 2016 Andrey Chetverikov. All rights reserved.
//

import UIKit

var setsize = 40
var condition = "r/g"
var proportion = 50
var timer = 0
var participant = ""
var age = 0
var gender:String? = ""

class MenuViewController: UIViewController {
    
    @IBOutlet weak var agelabel: UITextField!
    @IBOutlet weak var genderlabel: UITextField!
    @IBOutlet weak var Participantlabel: UITextField!
    @IBOutlet weak var sizelabel: UILabel!
    @IBOutlet weak var sizestepper: UIStepper!
    @IBOutlet weak var porplabel: UILabel!
    @IBOutlet weak var porpstepper: UIStepper!
    @IBOutlet weak var timelabel: UILabel!
    @IBOutlet weak var timestepper: UIStepper!
    @IBOutlet weak var conditionselect: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabels() {
        sizelabel.text = String(sizestepper.value)
        porplabel.text = String(porpstepper.value)
        timelabel.text = String(timestepper.value)
        
        Participantlabel.text = participant
        
        agelabel.text = String (age)
        genderlabel.text = gender!
    }
    

  
    @IBAction func saveage(sender: AnyObject) {
        age = Int (agelabel.text!)!
    }
    @IBAction func savegender(sender: AnyObject) {
        gender = genderlabel.text!
    }
    @IBAction func changedsize(sender: AnyObject) {
        updateLabels()
    }
    @IBAction func changedporp(sender: AnyObject) {
        updateLabels()
    }
    @IBAction func changedtime(sender: AnyObject) {
        updateLabels()
    }
    @IBAction func savesettings(sender: AnyObject) {
        setsize = Int (sizestepper.value)
    }
    @IBAction func saveprop(sender: AnyObject) {
        proportion = Int (porpstepper.value)
    }
    @IBAction func savetimer(sender: AnyObject) {
        timer = Int (timestepper.value)
    }
    @IBAction func saveparticipant(sender: AnyObject) {
        participant = String (Participantlabel.text!)
    }
    
    @IBAction func savecondition(sender: AnyObject) {
        switch sender.selectedSegmentIndex {
        case 0:
            condition = "r/g"
        case 1:
            condition = "b/y"
        case 2:
            condition = "rs/gt"
        case 3:
            condition = "rt/gs"
        default:
            break;
        }  //Switch
    }

    
}
