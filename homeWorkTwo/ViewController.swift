//
//  ViewController.swift
//  homeWorkTwo
//
//  Created by Aidana Assanova on 28.01.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    var currentLightIndex = 0
    let lightColors: [UIColor] = [.red, .yellow, .green]
    var isOn = false
    override func viewDidLoad() {
        super.viewDidLoad()
   
        redView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        nextButton.layer.cornerRadius = 10
        nextButton.clipsToBounds = true

    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        if isOn {
            currentLightIndex = (currentLightIndex + 1) % lightColors.count
        } else {
            isOn = true
            currentLightIndex = 0
        }
        
           redView.alpha = 0.3
           yellowLightView.alpha = 0.3
           greenLightView.alpha = 0.3

           switch currentLightIndex {
           case 0:
               redView.alpha = 1
           case 1:
               yellowLightView.alpha = 1.0
           case 2:
               greenLightView.alpha = 1.0
           default:
               break
           }

           let buttonText = isOn ? "START" : "NEXT"
           nextButton.setTitle(buttonText, for: .normal)
       }
   }

