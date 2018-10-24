//
//  SecondViewController.swift
//  ikid
//
//  Created by Ray Zhang on 10/22/18.
//  Copyright © 2018 Ray Zhang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var jokeIsVisiable = true
    var theJoke : String = "What do you call a blind deer?"
    var thePunchLine : String = "No eye-deer!"
    
    @IBOutlet weak var lblJoke: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func flipPressed(_ sender: Any) {
        if jokeIsVisiable {
            jokeIsVisiable = false
            lblJoke.text = thePunchLine
            UIView.transition(with: lblJoke, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }else{
            jokeIsVisiable = true
            lblJoke.text = theJoke
            UIView.transition(with: lblJoke, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
    
}

