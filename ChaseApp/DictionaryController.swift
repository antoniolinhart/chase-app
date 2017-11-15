//
//  DictionaryController.swift
//  ChaseApp
//
//  Created by Antonio M. Linhart on 11/2/17.
//  Copyright © 2017 Antonio M. Linhart. All rights reserved.
//

import UIKit

class DictionaryController: UIViewController {
    var words = [String]()
    var definitions = [String]()
    //@IBOutlet var testField: UILabel!
    //@IBOutlet var wordField: UILabel!
    @IBOutlet var segControl: UISegmentedControl!
    
    @IBOutlet var changingText: UILabel!
    
    @IBAction func changeSeg(_ sender: Any) {
        
        if segControl.selectedSegmentIndex == 0 {
            //testField.text = "yo yo yo"
            
        }
        if segControl.selectedSegmentIndex == 1 {
            //testField.text = "no no no"
            //wordField.text = ""
        }
        
    }
    

    @IBAction func changeTest(_ sender: Any) {
        
        //wordField.text = words[0]
        //testField.text = definitions[0]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addWordDefs(word: "lit", def: "sick")
        //testField.text = "hihihi"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addWordDefs(word: String, def: String){
        words.append(word)
        definitions.append(def)
        
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
