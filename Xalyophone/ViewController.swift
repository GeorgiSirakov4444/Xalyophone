import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        let nameButton = (sender.currentTitle)
        playSound(buttonTitle: nameButton!)
        sender.alpha = 0.55
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            sender.alpha = 1.0
        }
    }
    
    func playSound(buttonTitle: String) {
        let url = Bundle.main.url(forResource: buttonTitle, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
