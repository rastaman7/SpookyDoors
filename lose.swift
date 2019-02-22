import UIKit

class lose: UIViewController {

    @IBOutlet weak var loseImage: UIImageView!
    
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
            
            //loseImage.image = loadImageFromPath(path: path_file_name)
            
            let imageData = try? Data(contentsOf: path_file_name)
            let image = UIImage(data:imageData!)
            loseImage.image = image
            
            /*
            do {
                
                //let text = try FileManager.default.contentsOfDirectory(atPath: path_file_name)
                let text = try UIImage(contentsOfFile: file_name)
                loseImage.image = text
                
            } catch {
                //エラー処理
            }
 */
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
