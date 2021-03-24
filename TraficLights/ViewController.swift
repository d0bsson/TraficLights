//
//  ViewController.swift
//  TraficLights
//
//  Created by Дэвид Бердников on 25.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    private var colorValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 80
        yellowView.layer.cornerRadius = 80
        greenView.layer.cornerRadius = 80
        startButton.layer.cornerRadius = 10
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        colorValue += 1
        switch colorValue {
        case 1:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            redView.backgroundColor = .systemRed
        case 2:
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
            yellowView.backgroundColor = .systemYellow
        case 3:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            greenView.backgroundColor = .systemGreen
            colorValue = 0
        default:
            break
        }
    }
}
 
