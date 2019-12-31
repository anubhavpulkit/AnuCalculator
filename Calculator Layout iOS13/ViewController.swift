//
//  ViewController.swift
//  iCalculator Layout iOS

// Made by Anubhav Singh

import UIKit


class MyViewController: UIViewController {

    lazy var box = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

      
        }
    }



class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func zero(_ sender: UIButton) {
        
        label.text = label.text! + String( sender.tag-1)
        
}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

