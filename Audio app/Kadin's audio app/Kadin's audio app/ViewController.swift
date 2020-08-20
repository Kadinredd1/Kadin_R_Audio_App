//
//  ViewController.swift
//  Kadin's audio app
//
//  Created by Kadin Redd on 8/20/20.
//  Copyright © 2020 Kadin Redd. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {

    
    var audioPlayer = AVAudioPlayer()
    
    
    
    
    
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after
        
        let sound = Bundle.main.path(forResource: "HeyPal", ofType: "mp3")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch{
            print(error)
        }
        
       
    }

    @IBAction func pauseAudio(_ sender: Any){
        audioPlayer.pause()
    }
    
    @IBAction func playAudio(_ sender: Any) {
        audioPlayer.play()
    }
    
    
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
    }
    
    
    
    
    
    
}





















































