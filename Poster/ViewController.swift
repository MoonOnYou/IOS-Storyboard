//
//  ViewController.swift
//  Poster
//
//  Created by a1 on 2021/07/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textTest: UILabel!
    @IBOutlet weak var btnTest: UIButton!
    @IBOutlet var viewTest: UIView!
    @IBOutlet weak var swich3: UISwitch!
    var isOff : Bool = true
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
         
    }
    
    @IBAction func swichTest(_ sender: Any) {
        if let test = sender as? UISwitch  {
            if  test.isOn {
                viewTest.backgroundColor = UIColor.blue
            } else {
                viewTest.backgroundColor = UIColor.black
            }
        }
    
    }
    
    @IBAction func swichTest2(_ sender: Any) {
        if let test = sender as? UISwitch{
            if test.isOn {
                swich3.setOn(false, animated: true)
            } else {
                swich3.setOn(true, animated: true)
            }
        }
        
    }
    
    @IBAction func showAlert(_ sender: Any) {
        // control + 드래그
        let randomNum = arc4random_uniform(10000000) + 1
        
        let message = "랜덤 숫자값은 \(randomNum)입니다"
        let alert = UIAlertController(title: "title1", message: message,preferredStyle: .alert)
        let action = UIAlertAction(title: "title2", style:.default, handler: {_ in
            self.swich3.setOn(true, animated: true)
        })
        alert.addAction(action)
        
        textTest.text = "$\(randomNum)"
      
        if isOff {
            btnTest.setTitle("dkddkdkdkdkkdkdkd", for: .normal)
            isOff = false
        } else {
            btnTest.setTitle("ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ", for: .normal)
            isOff = true
        }
        
        
        
        present(alert, animated: true, completion: nil)
    }
}

