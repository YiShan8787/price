//
//  ViewController.swift
//  price
//
//  Created by User08 on 2018/10/24.
//  Copyright © 2018 User08. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var num3: UILabel!
    @IBOutlet weak var num4: UILabel!
    var totalprice=0;
    var p=0,b=0,v=0,m=0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func poka(_ sender: UIStepper) {
        p=Int(sender.value);
        num1.text="\(p)";
        //total.text=totalprice.description;
        calculate();
    }
    
    
    @IBAction func ball(_ sender: UIStepper) {
        b=Int(sender.value);
        //total.text=totalprice.description;
        num2.text="\(b)";
        calculate();
    }
    
    @IBAction func value(_ sender: UIStepper) {
        v=Int(sender.value);
        //total.text=totalprice.description;
        num3.text="\(v)";
        calculate();
    }
    
    @IBAction func money(_ sender: UIStepper) {
        m=Int(sender.value);
        //total.text=totalprice.description;
        num4.text="\(m)";
        calculate();
    }
    func calculate()
    {
        totalprice=p*2700+b*1000000+v*1000+m*81000;
        total.text=totalprice.description;
    }
}

