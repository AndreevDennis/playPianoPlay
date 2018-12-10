
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    let noteC = Bundle.main.path(forResource: "68441__pinkyfinger__piano-c", ofType: "wav")
    let noteF = Bundle.main.path(forResource: "f5", ofType: "mp3")
    
    @IBOutlet weak var labelNoteName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func c(_ sender: Any) {
        labelNoteName.text = nil
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: noteC!))
        } catch {
            print(error)
        }
        audioPlayer.play()
        labelNoteName.text?.append("C")
    }
    
    @IBAction func f(_ sender: Any) {
        labelNoteName.text = nil
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: noteF!))
        } catch {
            print(error)
        }
        audioPlayer.play()
        labelNoteName.text?.append("F")
    }
    
}


