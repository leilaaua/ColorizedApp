//
//  ViewController.swift
//  ColorizedApp
//
//  Created by leila leila on 20.08.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var colorizedView: UIView!
    
    @IBOutlet weak var redCurrentValue: UILabel!
    @IBOutlet weak var greenCurrentValue: UILabel!
    @IBOutlet weak var blueCurrentValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBOutlet weak var redValueTF: UITextField!
    @IBOutlet weak var greenValueTF: UITextField!
    @IBOutlet weak var blueValueTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.layer.cornerRadius = 10
        colorizedView.backgroundColor = .black
        
        redValueTF.layer.cornerRadius = 10
        greenValueTF.layer.cornerRadius = 10
        blueValueTF.layer.cornerRadius = 10
        
        redValueTF.text = redCurrentValue.text
        greenValueTF.text = greenCurrentValue.text
        blueValueTF.text = blueCurrentValue.text
    }
    
    @IBAction func redSliderAction() {
        changeCurrentValue(label: redCurrentValue, slider: redSlider, field: redValueTF)
        getColorizedView()
    }
    
    @IBAction func greenSliderAction() {
        changeCurrentValue(label: greenCurrentValue, slider: greenSlider, field: greenValueTF)
        getColorizedView()
    }
    
    @IBAction func blueSliderAction() {
        changeCurrentValue(label: blueCurrentValue, slider: blueSlider, field: blueValueTF)
        getColorizedView()
    }
    
    private func getColorizedView() {
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        
        colorizedView.backgroundColor = UIColor(
            red: redSliderValue,
            green: greenSliderValue,
            blue: blueSliderValue,
            alpha: 1 )
    }
    
    private func changeCurrentValue(label: UILabel!, slider: UISlider!, field: UITextField ) {
        label.text = String(format: "%.2f", slider.value)
        field.text = label.text
    }
}






