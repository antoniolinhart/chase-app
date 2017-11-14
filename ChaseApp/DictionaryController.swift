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
    
    var street: String = "5th avenue"
    @IBOutlet var testField: UILabel!
    @IBOutlet var wordField: UILabel!
    @IBAction func changeTest(_ sender: Any) {
        
        wordField.text = words[0]
        testField.text = definitions[0]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addWordDefs(word: "lit", def: "sick")
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
