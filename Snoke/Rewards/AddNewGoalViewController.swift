//
//  AddNewGoalViewController.swift
//  Snoke
//
//  Created by Akshat Naruka on 27/03/23.
//

import UIKit
import CoreImage
class AddNewGoalViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak public var imageview: UIImageView!
    
    @IBOutlet var ProductName: UITextField!
    
    @IBOutlet var ProductPrice: UITextField!
    
    @IBOutlet var AddButton: UIButton!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.delegate=self
    }
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        imageview.image=UIImage(UIImagePickerController.SourceType.savedPhotosAlbum)
//    }
    @IBAction func loadImageButtonTapped(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageview.contentMode = .scaleAspectFit
            imageview.image = pickedImage
        }

        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func addgoal(_ sender: UIButton) {
        goalsarray.append(goals(ProductName: ProductName.text ?? "Product" , price: ProductPrice.text! , image: (imageview.image ?? UIImage(named: "jordan"))!))
        
//        let personal = storyboard?.instantiateViewController(withIdentifier: "Personal") as! UIViewController
//
//        personal.modalPresentationStyle = .fullScreen
//        personal.modalTransitionStyle = .coverVertical
//
//        present(personal,animated: true,completion: nil)
    }
    
    
}
