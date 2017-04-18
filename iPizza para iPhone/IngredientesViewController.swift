//
//  IngredientesViewController.swift
//  iPizza para iPhone
//
//  Created by Luis Santamaría on 4/17/17.
//  Copyright © 2017 Santamaria Technologies. All rights reserved.
//

import UIKit

class IngredientesViewController: ViewController {

    
    var pedido: String = ""
    var ingredientes: String = ""
    
    @IBOutlet weak var switchJamon: UISwitch!
    @IBOutlet weak var switchPepperoni: UISwitch!
    @IBOutlet weak var switchPavo: UISwitch!
    @IBOutlet weak var switchSalchicha: UISwitch!
    @IBOutlet weak var switchAceituna: UISwitch!
    @IBOutlet weak var buttonTerminar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchJamonAction(sender: AnyObject) {
        if switchJamon.on {
            ingredientes = ingredientes + "Jamón, "
        }
    }
    
    @IBAction func switchPepperoniAction(sender: AnyObject) {
        if switchPepperoni.on {
            ingredientes = ingredientes + "Pepperoni, "
        }
    }
    
    @IBAction func switchPavoAction(sender: AnyObject) {
        if switchPavo.on {
            ingredientes = ingredientes + "Pavo, "
        }
    }
    
    @IBAction func switchSalchichaAction(sender: AnyObject) {
        if switchSalchicha.on {
            ingredientes = ingredientes + "Salchicha, "
        }
    }
    
    @IBAction func switchAceitunaAction(sender: AnyObject) {
        if switchAceituna.on {
            ingredientes = ingredientes + "Aceituna, "
        }
    }
    
    @IBAction func buttonTerminarAction(sender: AnyObject) {
        if switchJamon.on  {
            performSegueWithIdentifier("alPedido", sender: self)
        }
        else if switchPepperoni.on {
            performSegueWithIdentifier("alPedido", sender: self)
        }
        else if switchPavo.on {
            performSegueWithIdentifier("alPedido", sender: self)
        }
        else if switchSalchicha.on {
            performSegueWithIdentifier("alPedido", sender: self)
        }
        else if switchAceituna.on {
            performSegueWithIdentifier("alPedido", sender: self)
        }
        else {
            let alert = UIAlertController(title: "Advertencia", message: "Seleccione de 1 a 5 ingredientes", preferredStyle: .Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destino = segue.destinationViewController as! PedidoViewController
        
        destino.pedido = pedido + "con ingredientes \(ingredientes), "
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
