//
//  ViewController.swift
//  Arrays Random Word Generator
//
//  Created by John Pill on 06/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!      // This connects the label to our code.
    
    
    // Note the naming convention.
    // The array has an 's' to make it a plural.
    // When we use an element we use the same name, but singlular.
    let randomWords = ["Hello", "World", "Xcode", "Swift", "Expressive", "Fast", "Safe"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    // This func is connected to the button. 
    @IBAction func randomWordButtonPressed(_ sender: Any) {
       
        //Creates a random number between 0 and the amount of elements in the array -1.
        let randomNumber = Int.random(in: 0..<randomWords.count)
        
        // Picks an element in the array with the random number and stores in the randomWord constant.
        let randomWord = randomWords[randomNumber]
        
        // Outputs the word to the label.
        wordLabel.text = randomWord
    }
    
    
}

