//
//  ViewController.swift
//  ColorizedApp
//
//  Created by leila leila on 20.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ColorizedView: UIView!
    
    @IBOutlet weak var redCurrentValue: UILabel!
    @IBOutlet weak var greenCurrentValue: UILabel!
    @IBOutlet weak var blueCurrentValue: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        

    }

    @IBAction func redSliderAction() {
        redCurrentValue.text = String(redSlider.value)
        redSlider.minimumTrackTintColor = .red
    }
    
    @IBAction func greenSliderAction() {
        greenCurrentValue.text = String(greenSlider.value)
        greenSlider.minimumTrackTintColor = .green
    }
    
    @IBAction func blueSliderAction() {
        blueCurrentValue.text = String(blueSlider.value)
        blueSlider.minimumTrackTintColor = .blue
    }
    
    
    
}

