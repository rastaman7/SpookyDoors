import UIKit
import AVFoundation

class second: UIViewController {

    var audioPlayer = AVAudioPlayer()
    @IBOutlet weak var chooseDoor: UILabel!
    let DoorImage:UIImage = UIImage(named: "Door")!
    let DoorOpenImage:UIImage = UIImage(named: "DoorOpen")!
    
    let door_num = 6
    var rand_num = 0
    
    func winProcess(door:UIButton){
        door.setImage(DoorOpenImage, for: .normal)
        chooseDoor.text="you're safe! Next player"
        door.isEnabled = false
    }
    func loseProcess(door:UIButton){
        door.setImage(DoorOpenImage, for: .normal)
        chooseDoor.text="you lose"
        let storyboard: UIStoryboard = self.storyboard!
        let lose = storyboard.instantiateViewController(withIdentifier: "lose")
        self.present(lose, animated: true, completion: nil)
    }
    
    @IBOutlet weak var door0: UIButton!
    @IBAction func door0Pressed() {
        audioPlayer.play()
        if rand_num == 0 {
            loseProcess(door:door0)
        }else{
            winProcess(door:door0)
        }
    }
    
    @IBOutlet weak var door1: UIButton!
    @IBAction func door1Pressed() {
        audioPlayer.play()
        if rand_num == 1 {
            loseProcess(door:door1)
        }else{
            winProcess(door:door1)
        }
    }
    
    @IBOutlet weak var door2: UIButton!
    @IBAction func door2Pressed() {
        audioPlayer.play()
        if rand_num == 2 {
            loseProcess(door:door2)
        }else{
            winProcess(door:door2)
        }
    }
    
    @IBOutlet weak var door3: UIButton!
    @IBAction func door3Pressed() {
        audioPlayer.play()
        if rand_num == 3 {
            loseProcess(door:door3)
        }else{
            winProcess(door:door3)
        }
    }
    
    @IBOutlet weak var door4: UIButton!
    @IBAction func door4Pressed() {
        audioPlayer.play()
        if rand_num == 4 {
            loseProcess(door:door4)
        }else{
            winProcess(door:door4)
        }
    }
    
    @IBOutlet weak var door5: UIButton!
    @IBAction func door5Pressed() {
        audioPlayer.play()
        if rand_num == 5 {
            loseProcess(door:door5)
        }else{
            winProcess(door:door5)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rand_num = Int.random(in: 0..<door_num)
        let sound = Bundle.main.path(forResource: "doorSound", ofType: "mp3")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            audioPlayer.prepareToPlay()
        }catch{
            print(error)
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}