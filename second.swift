import UIKit
import AVFoundation

class second: UIViewController {

    @IBOutlet weak var chooseDoor: UILabel!
    @IBOutlet weak var Back: UIButton!
    @IBAction func BackPressed() {
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true
            , completion: nil)
    }
  
    let DoorImage:UIImage = UIImage(named: "Door")!
    let DoorOpenImage:UIImage = UIImage(named: "DoorOpen")!
    
    let door_num = 6
    var rand_num = 0
    
    var soundObj = sound()
    
    func winProcess(door:UIButton){
        soundObj.doorSound()
        door.setImage(DoorOpenImage, for: .normal)
        chooseDoor.text="you're safe! Next player"
        door.isEnabled = false
    }
    func loseProcess(door:UIButton){
        soundObj.doorSound()
        door.setImage(DoorOpenImage, for: .normal)
        chooseDoor.text="you lose"
        let storyboard: UIStoryboard = self.storyboard!
        let lose = storyboard.instantiateViewController(withIdentifier: "lose")
        self.present(lose, animated: true, completion: nil)
    }
    
    @IBOutlet weak var door0: UIButton!
    @IBAction func door0Pressed() {
        if rand_num == 0 {
            loseProcess(door:door0)
        }else{
            winProcess(door:door0)
        }
    }
    
    @IBOutlet weak var door1: UIButton!
    @IBAction func door1Pressed() {
        if rand_num == 1 {
            loseProcess(door:door1)
        }else{
            winProcess(door:door1)
        }
    }
    
    @IBOutlet weak var door2: UIButton!
    @IBAction func door2Pressed() {
        if rand_num == 2 {
            loseProcess(door:door2)
        }else{
            winProcess(door:door2)
        }
    }
    
    @IBOutlet weak var door3: UIButton!
    @IBAction func door3Pressed() {
        if rand_num == 3 {
            loseProcess(door:door3)
        }else{
            winProcess(door:door3)
        }
    }
    
    @IBOutlet weak var door4: UIButton!
    @IBAction func door4Pressed() {
        if rand_num == 4 {
            loseProcess(door:door4)
        }else{
            winProcess(door:door4)
        }
    }
    
    @IBOutlet weak var door5: UIButton!
    @IBAction func door5Pressed() {
        if rand_num == 5 {
            loseProcess(door:door5)
        }else{
            winProcess(door:door5)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rand_num = Int.random(in: 0..<door_num)

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("second being deinitialized")
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
