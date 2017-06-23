//
//  ViewController.swift
//  point
//
//  Created by MEI KU on 2017/6/22.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var amount: UITextField!
    
    @IBOutlet weak var percentage: UITextField!
    
    @IBOutlet weak var pointin: UITextField!
    
    @IBOutlet weak var base: UIImageView!
    
    @IBOutlet weak var coffee: UIImageView!
    
    @IBOutlet weak var airticket: UIImageView!
    
    @IBOutlet weak var suitcase: UIImageView!
    
    @IBOutlet weak var checkpointbtn: UIButton!
    
    @IBOutlet weak var airticket2: UILabel!
    
    @IBOutlet weak var suitcase2: UILabel!
    
    @IBOutlet weak var coffee2: UILabel!
    
    
    
    @IBAction func sendbtn(_ sender: Any) {
    
        
        if amount.text == "" || percentage.text == ""{
          pointin.text = ""
        } // 防呆check
            
        else { let result = Int(amount.text!)! * Int(percentage.text!)! / 100
          // 紅利計算，取得紅利點數整數所以不用double，用Int
            
            pointin.text = String(result)
            checkpointbtn.isHidden = false
        }
    }
    
    
    @IBAction func checkPoint(_ sender: Any) {
        
        base.isHidden = true
        checkpointbtn.isHidden = true
        
         // 用if else, check點數可以得到什麼禮物
        if Int(pointin.text!)! >= 1000 {
            suitcase.isHidden = true
            airticket.isHidden = false
            coffee.isHidden = true
            suitcase2.isHidden = true
            airticket2.isHidden = false
            coffee2.isHidden = true
            
        }
            
        else if Int(pointin.text!)! < 500 {
            suitcase.isHidden = true
            airticket.isHidden = true
            coffee.isHidden = false
            suitcase2.isHidden = true
            airticket2.isHidden = true
            coffee2.isHidden = false
            
        }
            
        else   {
            suitcase.isHidden = false
            airticket.isHidden = true
            coffee.isHidden = true
            suitcase2.isHidden = false
            airticket2.isHidden = true
            coffee2.isHidden = true
            
        }
        
    }
    
    // cleanbtn設定
    @IBAction func cleanbtn(_ sender: Any) {
        amount.text = ""
        percentage.text = ""
        pointin.text = ""
        base.isHidden = false
        suitcase.isHidden = true
        airticket.isHidden = true
        coffee.isHidden = true
        suitcase2.isHidden = true
        airticket2.isHidden = true
        coffee2.isHidden = true
        checkpointbtn.isHidden = true
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

