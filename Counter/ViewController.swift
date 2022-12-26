//
//  ViewController.swift
//  Counter
//
//  Created by Максим on 26.12.2022.
//

import UIKit

class ViewController: UIViewController {
    private var counter: Int = 0 {
        didSet {
            updateCounterLabel()
        }
    }

    @IBOutlet weak var removeButton: UIButton!
    @IBOutlet weak var appendButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var clearButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppereance()
    }
    
    @IBAction func buttomAppend(_ sender: Any) {
        counter += 1
    }
    
    @IBAction func buttomRemove(_ sender: Any) {
        counter -= 1
    }
    
    @IBAction func buttonClear(_ sender: Any) {
        counter = 0
    }
    
    private func updateCounterLabel() {
        counterLabel.text = String("Значеине счетчика: \(counter)")
    }
    
    private func setupAppereance() {
        appendButton.setTitle("Append", for: .normal)
        removeButton.setTitle("Remove", for: .normal)
        counterLabel.text = "Значение счетчика: \(counter)"
        clearButton.setTitle("Clear", for: .normal)
    }
       
}


