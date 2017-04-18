//
//  QuesoViewController.swift
//  iPizza para iPhone
//
//  Created by Luis Santamaría on 4/17/17.
//  Copyright © 2017 Santamaria Technologies. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let quesos = ["queso mozarela", "queso cheddar", "queso parmesano", "sin queso"]
    
    @IBOutlet weak var queso: UIPickerView!
    var pedido: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesos[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destino = segue.destinationViewController as! IngredientesViewController
        
        destino.pedido = pedido + "con \(quesos[queso.selectedRowInComponent(0)]), "
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
