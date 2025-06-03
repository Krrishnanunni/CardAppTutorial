//
//  ViewController.swift
//  CardAppTutorial
//
//  Created by Krishnanunni K A on 28/05/2025.
//

import UIKit

class ViewController: UIViewController {
    var Cards:[UIImage] = card.allValues
    var timer:Timer!
    @IBOutlet weak var cardImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        StartTimer()
        // Do any additional setup after loading the view.
    }
    
    func StartTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ShowRandomCard), userInfo: nil, repeats: true)
}
    @objc func ShowRandomCard(){
        
        cardImage.image = Cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @IBAction func RestartButtonTapped(_ sender: Any) {
        timer.invalidate()
        StartTimer()
        
        
    }
    @IBAction func StopButtonTapped(_ sender: Any) {
        timer.invalidate()
    }
   
  
    
    

    
}

