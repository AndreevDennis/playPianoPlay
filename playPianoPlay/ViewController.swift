
import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    @IBOutlet weak var labelNote: UILabel!
    
    let play = Piano()
    
    @IBAction func С(_ sender: UIButton) {
        labelNote.text = ""
        play.playSound(tag: sender.tag)
        labelNote.text = sender.titleLabel?.text
    }
}


