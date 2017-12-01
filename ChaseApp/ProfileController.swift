///Users/amlinhart/Library/Containers/com.apple.QuickTimePlayerX/Data/Library/Autosave Information/Unsaved QuickTime Player Document.qtpxcomposition/Screen Recording.mov
//  ProfileController.swift
//  ChaseApp
//
//  Created by Antonio M. Linhart on 11/2/17.
//  Copyright © 2017 Antonio M. Linhart. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {

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

        profilePic.image = (UIImage(named:profileImage))
        profilePic.layer.cornerRadius = profilePic.frame.size.width*1/2
        profilePic.layer.borderWidth = 2.5
        profilePic.layer.borderColor = UIColor.black.cgColor
        profilePic.clipsToBounds = true
        userField.text = username
        eventLabel1.text = event1
        eventLabel2.text = event2
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
extension UIImage{
    var circle: UIImage{
        let square = size.width < size.height ? CGSize(width: size.width, height: size.width) : CGSize(width: size.height, height: size.height)
        let imageView = UIImageView(frame: CGRect(origin: CGPoint(x:0, y:0), size: square))
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.image = self
        imageView.layer.cornerRadius = square.width/2
        imageView.layer.masksToBounds = true
        UIGraphicsBeginImageContext(imageView.bounds.size)
        imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return result!
    }
}
