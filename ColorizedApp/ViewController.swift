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
        colorizedView.layer.cornerRadius = 10
        colorizedView.backgroundColor = .black
    }
    
    @IBAction func redSliderAction() {
        changeCurrentValue(label: redCurrentValue, slider: redSlider)
        getColorizedView()
    }
    
    @IBAction func greenSliderAction() {
        changeCurrentValue(label: greenCurrentValue, slider: greenSlider)
        getColorizedView()
    }
    
    @IBAction func blueSliderAction() {
        changeCurrentValue(label: blueCurrentValue, slider: blueSlider)
        getColorizedView()
    }
    
    private func getColorizedView() {
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        colorizedView.backgroundColor = UIColor(red: redSliderValue,
                                                green: greenSliderValue,
                                                blue: blueSliderValue,
                                                alpha: 1 )
    }
    
    private func changeCurrentValue(label: UILabel!, slider: UISlider! ) {
        label.text = String(format: "%.2f", slider.value)
    }
    
}






