import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var emailTxtFiled: UITextField!
    @IBOutlet weak var numberTxtFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set("bob", forKey: "username")
        let username = UserDefaults.standard.object(forKey: "username") as? String
        print(username!)
        emailTxtFiled.delegate = self
        numberTxtFiled.delegate = self
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
