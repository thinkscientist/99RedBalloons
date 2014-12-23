//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Ash Minhas on 14/11/2014.
//  Copyright (c) 2014 Ash Minhas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var BalloonLabel: UILabel!
    var myBalloons:[Balloon] = []
    var currentIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.createBalloons()
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func NextButtonPressed(sender: UIBarButtonItem) {
        
        
        if currentIndex < 99    {
            
            let balloon = myBalloons[currentIndex]
            
            ImageView.image = balloon.image
            BalloonLabel.text = "\(balloon.number) Balloons"
            
            currentIndex += 1

            
        }
        else {
            
        BalloonLabel.text = "You ran out of Balloons"
        }
    }
    
    func createBalloons() {
    
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount
        {
        var balloon = Balloon()
        balloon.number = balloonCount
        let randomIndex = Int(arc4random_uniform(UInt32(4)))
            switch randomIndex
            {
            case 1: balloon.image = UIImage(named: "RedBalloon1.jpg")
            case 2: balloon.image = UIImage(named: "RedBalloon2.jpg")
            case 3: balloon.image = UIImage(named: "RedBalloon3.jpg")
            default: balloon.image = UIImage(named: "RedBalloon4.jpg")
                
            }
            self.myBalloons.append(balloon)
        }
    }
    
    
    


}

