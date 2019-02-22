 import UIKit

class settings: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ChooseImage: UIButton!
    @IBOutlet weak var ResetImage: UIButton!
    
    let file_name = "newloseimage.pdf"
    
    @IBAction func ChooseImagePressed() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let pickerView = UIImagePickerController()
            pickerView.sourceType = .photoLibrary
            pickerView.delegate = self
            self.present(pickerView, animated: true)
            
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.imageView.image = image

        if let dir = FileManager.default.urls( for: .documentDirectory, in: .userDomainMask ).first {
            
            let path_file_name = dir.appendingPathComponent( file_name )
            
            do {
                
                try image.pngData()?.write(to: path_file_name, options: .atomic)
                
            } catch {
                //エラー処理
            }
        }
        
        self.dismiss(animated: true)
        
    }
    
    @IBAction func ResetImagePressed() {
        if let dir = FileManager.default.urls( for: .documentDirectory, in: .userDomainMask ).first {
            
            let path_file_name = dir.appendingPathComponent( file_name )
            
            do {
                let loseImage: UIImage = UIImage(named: "loseImage.png")!
                try loseImage.pngData()?.write(to: path_file_name, options: .atomic)
                
            } catch {
                //エラー処理
            }
        }
        viewDidLoad()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let file_name = "newloseimage.pdf"
        
        if let dir = FileManager.default.urls( for: .documentDirectory, in: .userDomainMask ).first {
            
            let path_file_name = dir.appendingPathComponent( file_name )
            
            let imageData = try? Data(contentsOf: path_file_name)
            let image = UIImage(data:imageData!)
            imageView.image = image
 
        }
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
