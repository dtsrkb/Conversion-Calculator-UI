//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Drew Smith on 4/9/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    @IBOutlet weak var outputDisplay: UITextField!
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    struct converterStruct {
        var label: String
        var inputUnit: String
        var outputUnit: String
    }
    
    var converterArray: [converterStruct] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        converterArray.append(converterStruct(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"))
        converterArray.append(converterStruct(label: "celcious to fahrenheit", inputUnit: "°C", outputUnit: "°F"))
        converterArray.append(converterStruct(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"))
        converterArray.append(converterStruct(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi"))
        
        self.outputDisplay.text = self.converterArray[0].outputUnit
        self.inputDisplay.text = self.converterArray[0].inputUnit
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func converterButton(_ sender: Any) {
        // this example uses the .actionSheet style.  It could be set to another style such as .alert
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: self.converterArray[0].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle choice A
            self.outputDisplay.text = self.converterArray[0].outputUnit
            self.inputDisplay.text = self.converterArray[0].inputUnit
        }))
        alert.addAction(UIAlertAction(title: self.converterArray[1].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle choice B
            self.outputDisplay.text = self.converterArray[1].outputUnit
            self.inputDisplay.text = self.converterArray[1].inputUnit
            
        }))
        alert.addAction(UIAlertAction(title: self.converterArray[2].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle choice C
            self.outputDisplay.text = self.converterArray[2].outputUnit
            self.inputDisplay.text = self.converterArray[2].inputUnit
            
        }))
        alert.addAction(UIAlertAction(title: self.converterArray[3].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle choice D
            self.outputDisplay.text = self.converterArray[3].outputUnit
            self.inputDisplay.text = self.converterArray[3].inputUnit
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
