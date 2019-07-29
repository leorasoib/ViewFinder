//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by  on 7/29/19.
//  Copyright © 2019 Leora and Daya. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var pickImage = UIImagePickerController()

    @IBOutlet weak var textField: UITextField!
   
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickImage.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Submit(_ sender: Any) {
        
        
    }
    
    @IBAction func takePhoto(_ sender: Any) {
        pickImage.sourceType = .camera
        present(pickImage, animated: true, completion: nil)
    }
    
     @IBAction func fromLibrary(_ sender: Any) {
        pickImage.sourceType = .savedPhotosAlbum
        present(pickImage, animated: true, completion: nil)
     }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info [UIImagePickerController.InfoKey.originalImage] as? UIImage{imageView.image = selectedImage
    
        }
    pickImage
        .dismiss(animated:true, completion:nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
    }


}
