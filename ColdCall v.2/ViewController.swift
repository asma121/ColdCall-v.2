//
//  ViewController.swift
//  ColdCall v.2
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let names = ["Deem","Layan","Maha","Noor","Leen","Hajar","Linah","Asmaa"]
    @IBAction func coldCallButton(_ sender: Any) {
        let shuffledNames = names.shuffled()
        nameLabel.text = shuffledNames[0]
        updateNumberLabel()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func updateNumberLabel(){
        let number = Int.random(in: 1...5)
        numberLabel.text = String(number)
        
        if number == 1 || number == 2{
            numberLabel.textColor = .red
        }else if number == 3 || number == 4 {
            numberLabel.textColor = .orange
        }else{
            numberLabel.textColor = .green
        }
    }

}

