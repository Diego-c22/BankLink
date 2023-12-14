//
//  MenuViewController.swift
//  BankLink
//
//  Created by Diego Cortes on 12/12/23.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Inquiries(_ sender: Any) {
        performSegue(withIdentifier: "Inquiries", sender: self)

    }
    
    @IBAction func Payments(_ sender: Any) {
        performSegue(withIdentifier: "Payments", sender: self)
    }
    @IBAction func Transfers(_ sender: Any) {
        performSegue(withIdentifier: "Transfers", sender: self)
    }
    @IBAction func Purchases(_ sender: Any) {
        performSegue(withIdentifier: "Purchases", sender: self)
    }
    @IBAction func Credits(_ sender: Any) {
        performSegue(withIdentifier: "Credits", sender: self)
    }
    @IBAction func Maps(_ sender: Any) {
        performSegue(withIdentifier: "Maps", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
