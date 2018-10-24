//
//  knockKnockViewController.swift
//  ikid
//
//  Created by Ray Zhang on 10/22/18.
//  Copyright © 2018 Ray Zhang. All rights reserved.
//

import UIKit

class knockKnockViewController: UIViewController {

    var knock: String = "Knock knock"
    var who: String = "Who's there?"
    var answer: String = "Boo"
    var answerWho: String = "Boo who"
    var thePunchLine: String = "Quit cryin!"
    
    @IBOutlet weak var lblJoke: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func flipPressed(_ sender: Any) {
        if(lblJoke.text == knock){
            lblJoke.text = who
            UIView.transition(with: lblJoke, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }else if(lblJoke.text == who){
            lblJoke.text = answer
            UIView.transition(with: lblJoke, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }else if(lblJoke.text == answer){
            lblJoke.text = answerWho
            UIView.transition(with: lblJoke, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }else if(lblJoke.text == answerWho){
            lblJoke.text = thePunchLine
            UIView.transition(with: lblJoke, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }else{
            lblJoke.text = knock
            UIView.transition(with: lblJoke, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
