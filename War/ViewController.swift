//
//  ViewController.swift
//  War
//
//  Created by Mohamed Mostafa Fawzi on 8/10/19.
//  Copyright © 2019 Mohamed Mostafa Fawzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftviewimage: UIImageView!
    @IBOutlet weak var rightviewimage: UIImageView!
    @IBOutlet weak var playeronescore: UILabel!
    @IBOutlet weak var playertwoscore: UILabel!
    
    var leftscore = 0
    var rightscore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealtapped(_ sender: Any) {
        
        // Randomize numbers
        let leftnumber = Int.random(in: 2...4)
        let rightnumber = Int.random(in: 2...4)
        
        // Update the image view
        leftviewimage.image = UIImage(named: "card\(leftnumber)")
        rightviewimage.image = UIImage(named: "card\(rightnumber)")
        
        // Compare the random numbers
        if leftnumber > rightnumber {
            
           // left wins
             leftscore += 1
            playeronescore.text = String(leftscore)
            
        }
        
        else if leftnumber < rightnumber {
            
            // right wins
            rightscore += 1
            playertwoscore.text = String(rightscore)
            
        }
        
        else {
            
            // draw
        }
        
        
    }
    
    
    
    
}

