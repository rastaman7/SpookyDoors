import UIKit

class ViewController: UIViewController {
    
    var soundObj = sound()
    
    @IBOutlet weak var Start6: UIButton!
    @IBAction func Start6Pressed() {
        soundObj.buttonSound()
    }
    @IBOutlet weak var Settings: UIButton!
    @IBAction func SettingsPressed() {
        soundObj.buttonSound()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}
