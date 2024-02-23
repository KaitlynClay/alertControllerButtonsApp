//
//  ViewController.swift
//  alertControllerButtonsApp
//
//  Created by student on 2/22/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.numberOfLines = 0
    }


    @IBAction func btnTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "The horses are sick!", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in
            self.labelResult.text = "OK"
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {action -> Void in
            self.labelResult.text = "Cancel"
        })
        let destroyAction = UIAlertAction(title: "Destroy", style: .destructive, handler: {action -> Void in
            self.labelResult.text = "Destroy"
        })
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        self.present(alert, animated: true, completion: nil)
    }
}

