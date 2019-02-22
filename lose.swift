import UIKit

class lose: UIViewController {

    @IBOutlet weak var loseImage: UIImageView!
    @IBOutlet weak var Back: UIButton!
    @IBAction func BackPressed() {
    self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    func loadImageFromPath(path: String) -> UIImage? {
        let image = UIImage(contentsOfFile: path)
        if image == nil {
            print("missing image at: \(path)")
        }
        return image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let file_name = "newloseimage.pdf"
        
        if let dir = FileManager.default.urls( for: .documentDirectory, in: .userDomainMask ).first {
            
            let path_file_name = dir.appendingPathComponent( file_name )
            
            let imageData = try? Data(contentsOf: path_file_name)
            if imageData != nil {
                let image = UIImage(data:imageData!)
                loseImage.image = image
                print("here1!")
            }else{
                loseImage.image = UIImage(named: "loseImage.png")!
                print("here2!")
            }
            
        }
        
    }
    
    deinit {
        print("lose being deinitialized")
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
