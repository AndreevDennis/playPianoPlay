
import Foundation
import AVFoundation

class Piano {
    
    let sounds: [String] =
        [Bundle.main.path(forResource: "c1", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "c1s", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "d1", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "d1s", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "e1", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "f1", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "f1s", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "g1", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "g1s", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "a1", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "a1s", ofType: "wav") ?? "",
         Bundle.main.path(forResource: "123", ofType: "mp3") ?? ""]
    
    var audioPlayer = AVAudioPlayer()
    
    func playSound (tag: Int) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sounds[tag]))
        } catch {
            print("error")
        }
        audioPlayer.play()
//        audioPlayer.enableRate = true
        audioPlayer.prepareToPlay()
    }
}

