//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Simon Green on 08/02/2019.
//  Copyright © 2019 Simon Green. All rights reserved.
//

import UIKit
import AVFoundation

extension ViewController: AVSpeechSynthesizerDelegate{
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish      utterance: AVSpeechUtterance) {
        
        audioIndex += 1
        
        if audioIndex != noteArray.count{
            playWord(noteArray[audioIndex])
        }
    }
}

class ViewController: UIViewController {

    var wordReader: AVSpeechUtterance!
    let speechSynthesizer = AVSpeechSynthesizer()
    var noteArray = Fizz.toArray()
    var audioIndex = 0
    

    @IBAction func buttonTapped(_ sender: Any) {
        speechSynthesizer.delegate = self
        playWord(noteArray[audioIndex])
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
            }
    
    func playWord(_ word: String){
            wordReader = AVSpeechUtterance(string: word)
            wordReader.rate = 0.5
            wordReader.volume = 1
            speechSynthesizer.speak(wordReader)
    }
}

