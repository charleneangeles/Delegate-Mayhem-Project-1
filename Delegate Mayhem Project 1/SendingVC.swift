//
//  SendingVC.swift
//  Delegate Mayhem Project 1
//
//  Created by Charlene Angeles on 10/15/17.
//  Copyright © 2017 deHao. All rights reserved.
//

import UIKit

protocol DataSentDelegate{
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {

    @IBOutlet weak var dataEntryTextField: UITextField!
    var delegate: DataSentDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func SendButton(_ sender: Any) {
        
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated:true, completion: nil)
            }
        }
    }
    
}
