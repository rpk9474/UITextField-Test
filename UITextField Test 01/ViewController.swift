//
//  ViewController.swift
//  UITextField Test 01
//
//  Created by D7702_10 on 2019. 4. 3..
//  Copyright © 2019년 D7702_10. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Delegate class connection
        myTextField.delegate = self
        
        // 텍스트 박스 지우는 용도
        myTextField.clearButtonMode = UITextField.ViewMode.always
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        let inString = myTextField.text
        myLabel.text = inString
        myTextField.text = ""
        
        // 키패드 내림 ( 권한 박탈 )
        myTextField.resignFirstResponder()
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
        return true
    }
    
}

