//
//  ViewController.swift
//  CommonInputControls(2.9  Controls in Action project)
//
//  Created by Sophie Kim on 2020/08/07.
//  Copyright © 2020 Sophie Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
}

extension ViewController {
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
        
        if toggle.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
        print("The slider is set to \(slider.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        guard sender.isOn else {
            print("The switch is off.")
            return
        }
        
        print("The switch is on!")
        
//        if sender.isOn {
//            print("The switch is on!")
//        } else {
//            print("The switch is off.")
//        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        sender.resignFirstResponder()
        
        guard let text = sender.text else { return }
        
        printHi()
        print(text)
    }
    
    
    @IBAction func textChanged(_ sender: UITextField) {
        guard let text = sender.text else { return }
        
        print(text)
    }
    
    @IBAction func onDidTapGesture(_ sender: UITapGestureRecognizer) {
        print("onDidTapGesture")
    }
}
