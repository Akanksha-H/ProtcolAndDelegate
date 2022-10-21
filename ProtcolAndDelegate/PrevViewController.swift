//
//  ViewController.swift
//  ProtcolAndDelegate
//
//  Created by Admin on 20/10/22.
//

import UIKit

class PrevViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var textFieldP: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextPageButtonTapped(_ sender: Any) {
        let nextVC =  storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        nextVC.selectionDelegate = self
//        nextVC.data = textFieldP.text
    
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

extension PrevViewController: SelectionDelegate {
    func didSelectChioce(text: UITextField) {
        lable.text = text.text
    }
}



