//
//  AwardSound.swift
//  Unwrap
//
//  Created by Fernando Olivares on 7/31/21.
//  Copyright © 2021 Hacking with Swift. All rights reserved.
//

import Foundation
import AVFoundation

class AwardSound {
    
    func play() {
        let levelUpSoundURL = Bundle.main.url(forResource: "levelUp", withExtension: "wav")!

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            let player = try AVAudioPlayer(contentsOf: levelUpSoundURL,
                                           fileTypeHint: AVFileType.wav.rawValue)
            
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}
