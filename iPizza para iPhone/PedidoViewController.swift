//
//  PedidoViewController.swift
//  iPizza para iPhone
//
//  Created by Luis Santamaría on 4/18/17.
//  Copyright © 2017 Santamaria Technologies. All rights reserved.
//

import UIKit

class PedidoViewController: ViewController {
    
    var pedido: String = ""
    
    @IBOutlet weak var orden: UITextView!
    @IBOutlet weak var buttonOk: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        orden.text = pedido

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonOkAction(sender: AnyObject) {
        let alert = UIAlertController(title: "Confirmación", message: "¿Desea confirmar su pedido?", preferredStyle: .Alert)
        
        alert.addAction(UIAlertAction(title: "Si", style: .Default, handler: { (action: UIAlertAction) -> Void in
            self.performSegueWithIdentifier("alInicio", sender: self)
            
}))

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}