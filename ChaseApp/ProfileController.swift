///Users/amlinhart/Library/Containers/com.apple.QuickTimePlayerX/Data/Library/Autosave Information/Unsaved QuickTime Player Document.qtpxcomposition/Screen Recording.mov
//  ProfileController.swift
//  ChaseApp
//
//  Created by Antonio M. Linhart on 11/2/17.
//  Copyright © 2017 Antonio M. Linhart. All rights reserved.
//

import UIKit

class ProfileController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var userField: UILabel!
    @IBOutlet weak var eventLabel1: UILabel!
    @IBOutlet weak var eventLabel2: UILabel!

    var profileImage = "profilepic02.jpg"
    var username = "PairOfPairs"
    var event1 = "December 1st @ 2:00 PM - Meeting at CAPS"
    var event2 = "December 15th @ 1:30 PM - Video Chat with CAPS Students"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePic.backgroundColor = UIColor.lightGray
        
        profilePic.image = (UIImage(named:profileImage))
        profilePic.layer.cornerRadius = profilePic.frame.size.width*1/2
        profilePic.layer.borderWidth = 2.5
        profilePic.layer.borderColor = UIColor.black.cgColor
        profilePic.clipsToBounds = true
        userField.text = username
        eventLabel1.text = event1
        eventLabel2.text = event2
        

    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        profilePic.image = image
        dismiss(animated: true, completion: nil)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let controller = UIImagePickerController()
        controller.delegate = self
        controller.sourceType = .photoLibrary
        present(controller, animated: true, completion: nil)
        
    }
}
