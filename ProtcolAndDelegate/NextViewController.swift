//
//  NextViewController.swift
//  ProtcolAndDelegate
//
//  Created by Admin on 20/10/22.
//

import UIKit

protocol SelectionDelegate {
    func didSelectChioce(text: UITextField)
}

class NextViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var lableN: UILabel!
    
    var selectionDelegate: SelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func toPrevButtonTapped(_ sender: Any) {
        selectionDelegate.didSelectChioce(text: textField)
        navigationController?.popViewController(animated: true)
        
    }
}

