//
//  DictionaryController.swift
//  ChaseApp
//
//  Created by Antonio M. Linhart on 11/2/17.
//  Copyright © 2017 Antonio M. Linhart. All rights reserved.
//

import UIKit

class DictionaryController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var words = [String]()
    var definitions = [String]()
    @IBOutlet var segControl: UISegmentedControl!
    @IBOutlet var tableView: UITableView!
    
    
    
    @IBAction func changeSeg(_ sender: Any) {
        
        if segControl.selectedSegmentIndex == 0 {
            //testField.text = "yo yo yo"
            
        }
        if segControl.selectedSegmentIndex == 1 {
            //testField.text = "no no no"
            //wordField.text = ""
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellWord", for: indexPath)
        
        let word = words[indexPath.row]
        let def = definitions[indexPath.row]
        
        cell.textLabel?.text = word + ":   " + def
        cell.textLabel?.numberOfLines = 0
        return cell
    }

    @IBAction func changeTest(_ sender: Any) {
        
        //wordField.text = words[0]
        //testField.text = definitions[0]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addWordDefs(word: "lit", def: "exciting")
        addWordDefs(word: "lol", def: "laughing out loud")
        addWordDefs(word: "bet", def: "yes or I agree")
        addWordDefs(word: "banger", def: "a big party")
        addWordDefs(word: "dope", def: "cool or very good")
        addWordDefs(word: "good vibes", def: "happy feelings")
        addWordDefs(word: "dm", def: "direct message")
        addWordDefs(word: "insta", def: "instagram")
        addWordDefs(word: "finsta", def: "fake instagram - used to post embarassing photos")
        addWordDefs(word: "squad", def: "A crew, posse, gang: a group of friends, usually with a common identity or interest")
        addWordDefs(word: "yeet", def: "term used to express excitement")
        addWordDefs(word: "fleek", def: "used to describe when something is 'on point")
        addWordDefs(word: "whip", def: "a dance move or term used when something is cool")
        addWordDefs(word: "swag", def: "term used for the word 'cool'")
        addWordDefs(word: "burn", def: "An exclamation used to imply that one has just been insulted with no chance of rebuttal")
        addWordDefs(word: "roast", def: "To humorously mock or humiliate someone with a well-timed joke, diss, or comeback")

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
