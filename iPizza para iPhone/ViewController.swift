//
//  ViewController.swift
//  iPizza para iPhone
//
//  Created by Luis Santamaría on 4/17/17.
//  Copyright © 2017 Santamaria Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let tamaños = ["chica", "mediana", "grande"]

    @IBOutlet weak var tamaño: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamaños.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamaños[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destino = segue.destinationViewController as! MasaViewController
        
        destino.pedido = "Pizza \(tamaños[tamaño.selectedRowInComponent(0)]), "
    }
    
    
    
    


}

