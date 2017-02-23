//
//  ViewController.swift
//  bezier-path
//
//  Created by Make School on 2/6/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var circlePath: CirclePath!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        circlePath.value = sender.value
    }
    
    @IBAction func circlePathChanges(_ sender: CirclePath) {
        slider.value = circlePath.value
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        circlePath.addTarget(self, action: #selector(update), for: .valueChanged)
    }
    
    func update() {
        print("Circle thing updated!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
