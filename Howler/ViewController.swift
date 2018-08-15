//
//  ViewController.swift
//  Howler
//
//  Created by Tracy Lam on 10/3/15.
//  Copyright © 2015 Sharfa Prasad and Tracy Lam. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "URGE.pdf")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func makeNoise(sender: AnyObject) {
        
        //set file name and location
        let loudNoise = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("2", ofType: "mp3")!)
        
        do{
        //tell app to prepare audio file
        
        try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        } catch _ {
        
        }
        
        do {
            
        try AVAudioSession.sharedInstance().setActive(true)
        } catch _ {
            
        }

        
        audioPlayer = try! AVAudioPlayer(contentsOfURL: loudNoise)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
        
        
    }
    


}

