//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mac Mini on 11/29/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        setRandomBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        setRandomBallImage()
    }
    
    func setRandomBallImage() {
        randomBallNumber = 1 + Int(arc4random_uniform(5))
        imageView.image = UIImage(named: "ball\(randomBallNumber)")
    }

}

