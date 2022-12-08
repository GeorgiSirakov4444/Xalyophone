import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        var nameButton = (sender.currentTitle)
        playSound(buttonTitle: nameButton!)
    }
    
    func playSound(buttonTitle: String) {
        let url = Bundle.main.url(forResource: buttonTitle, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
