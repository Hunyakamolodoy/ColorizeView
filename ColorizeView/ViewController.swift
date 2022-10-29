//
//  ViewController.swift
//  ColorizeView
//
//  Created by Дмитрий Селезнев on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {

// MARK: - IB Outlets
    
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 20
        
        setupRedSlider()
        setupBlueSlider()
        setupGreenSlider()
        
        changeColor()
        
        
        
        
    }
    
// MARK: - IB Actions
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        //blueLabel.text = (round(blueSlider.value * 100) / 100).formatted()
        //blueLabel.text = blueSlider.value.rounded().formatted()
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        changeColor()
    }
    
    
    
// MARK: - Private Methods
    private func setupRedSlider() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
    }
    
    private func changeColor() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}

