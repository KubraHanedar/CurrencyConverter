//
//  ViewController.swift
//  currencyConverter
//
//  Created by Kübra Hanedar on 16.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gpbLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func getRatesClicked(_ sender: Any) {
        
        //  1 - REQUEST & SESSION
        //  2 - RESPONSE & DATA
        //  3 - PARSING & JSON SERIALIZATION
        
        
        // 1.
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/CurrencyData/main/currency.json")
        
        let session = URLSession.shared
        
        // CLOSURE
        
        let task = session.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                let alert = UIAlertController(title: "error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true,completion: nil)
            } else {
                
                // 2.
                if data != nil {
                   
                   
                }
                
            }
        }
        task.resume()
        
    }
}

