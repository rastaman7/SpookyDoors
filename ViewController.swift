import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var Start6: UIButton!
    @IBAction func Start6Pressed() {
        audioPlayer.play()
    }
    @IBOutlet weak var Settings: UIButton!
    @IBAction func SettingsPressed() {
        audioPlayer.play()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sound = Bundle.main.path(forResource: "buttonSound", ofType: "mp3")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            audioPlayer.prepareToPlay()
        }catch{
            print(error)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}
