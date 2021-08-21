//
//  ViewController.swift
//  ColorizedApp
//
//  Created by leila leila on 20.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var colorizedView: UIView!
    
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
        colorizedView.layer.cornerRadius = 10
       
        
    }
    
    @IBAction func redSliderAction() {
        redCurrentValue.text = String(redSlider.value)
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        colorizedView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1 )
    }
    
    @IBAction func greenSliderAction() {
        greenCurrentValue.text = String(greenSlider.value)
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        colorizedView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1 )
        
    }
    
    @IBAction func blueSliderAction() {
        blueCurrentValue.text = String(blueSlider.value)
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        colorizedView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1 )
        
    }
    
    
}

    
    
    


