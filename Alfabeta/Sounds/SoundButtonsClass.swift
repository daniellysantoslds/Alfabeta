//
//  SoundButtonsView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 31/05/22.
//

import SwiftUI
import AVKit

class SoundManager {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    func playSound(sound: SoundOption) {
        
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error  playing sound. \(error.localizedDescription)")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    struct SoundButtonsView: View {
        var body: some View {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }

    struct SoundButtonsView_Previews: PreviewProvider {
        static var previews: some View {
            SoundButtonsView()
        }
    }

}
















