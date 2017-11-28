//
//  ProfileController.swift
//  ChaseApp
//
//  Created by Antonio M. Linhart on 11/2/17.
//  Copyright © 2017 Antonio M. Linhart. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {

    @IBOutlet weak var profilePic: UIImageView!
    

    var profileImage = "profilepic02.jpg"
    var username = "PairOfPairs"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profilePic.image = (UIImage(named:profileImage))
        profilePic.layer.cornerRadius = profilePic.frame.size.width*1/2
        profilePic.layer.borderWidth = 2.5
        profilePic.layer.borderColor = UIColor.black.cgColor
        profilePic.clipsToBounds = true
        //userField.text = username
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
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
