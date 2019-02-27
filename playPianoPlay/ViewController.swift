
import UIKit
import AVFoundation
class ViewController: UIViewController {
    let play = Piano()
    
    @IBAction func С(_ sender: UIButton) {
        play.playSound(tag: sender.tag)
        print("\(sender.tag)")

    }
}


