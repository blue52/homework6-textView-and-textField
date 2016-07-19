//
//  ViewController.swift
//  homework6
//
//  Created by sky on 2016/7/19.
//  Copyright © 2016年 sky. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet weak var displaywordsLabel: UILabel!

    @IBOutlet weak var displayTextViewLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        if range.location >= 10 {
            
            return false
            
        }else{
            displaywordsLabel.text = String(range.location + 1)
            return true
            
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if range.location >= 10{
            textView.resignFirstResponder()
            return false
        }else{
            displayTextViewLabel.text = String(range.location + 1)
            return true
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

