//
//  ViewController.swift
//  ChallengeTask3
//
//  Created by 松島悠人 on 2021/01/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var switch1: UISwitch!
    
    @IBOutlet weak var switch2: UISwitch!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    var number1 = 0
    var number2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func didTapButton(_ sender: Any) {
        
        
        guard textField1.text != "" && textField2.text != "" else {
            
            label3.text = "数字を入力してください"
            
            return
        }
        
        
          if switch1.isOn  {
              
              // number1 = Int(textField1.text ?? "") ?? 0 に　*-1をしても-にならないのはなぜでしょうか
              number1 = Int(textField1.text ?? "") ?? 0
              number1 *= -1
              label1.text =  "\(number1)"
          
        
            print(number1)
                            
              
          } else {
            
            
            number1 = Int(textField1.text ?? "") ?? 0
            label1.text = "\(number1)"
           
            
          }
        
        if switch2.isOn  {
                        
            number2 = Int(textField1.text ?? "") ?? 0
            number2 *= -1
            label2.text =  "\(number2)"
        
                          
            
        } else {
          
          label2.text = "\(number2)"
          number2 = Int(textField2.text ?? "") ?? 0
          
        }
        
        
        let totalNumber = number1 + number2
        label3.text  = "\(totalNumber)"
    
    
}
    
        
        
        
    }
    


