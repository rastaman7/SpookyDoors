import Foundation
import UIKit
import AVFoundation

class sound{
    var audioPlayer = AVAudioPlayer()
    
    func playSound(sound: String){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
            audioPlayer.prepareToPlay()
        }catch{
            print(error)
        }
        audioPlayer.play()
    }
    
    func buttonSound(){
        let sound = Bundle.main.path(forResource: "buttonSound", ofType: "mp3")
        playSound(sound: sound!)
    }
    
    func doorSound(){
        let sound = Bundle.main.path(forResource: "doorSound", ofType: "mp3")
        playSound(sound: sound!)
    }
}
