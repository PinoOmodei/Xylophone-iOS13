//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var player : AVAudioPlayer?

    @IBAction func keyPressed(_ sender: UIButton) {
        // print("key \(sender.currentTitle!) has been pressed")
        playSound(soundName: sender.currentTitle!)
        
        // Button flashes using opacity and asyncAfter
        sender.alpha = 0.3
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
    }

    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()

    } // End of Play Sound
    
}

