//
//  ViewController.swift
//  TheLocals
//
//  Created by Jesus Luna on 10/20/19.
//  Copyright © 2019 Jesus Luna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var artistCollection: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func handleSelection(_ sender: UIButton) {
        artistCollection.forEach { (button) in
            UIView.animate(withDuration: 0.3 , animations: {
            button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
    enum Artists: String{
        case singer = "Singer"
        case photographer = "Photographer"
        case instrumentPlayer = "Instrument Player"
        case comedian = "Comedian"
        case barber = "Barber"
        case artist = "Artist"
        case cook = "Cook"
    }
    @IBAction func artistTap(_ sender: UIButton) {
        guard let title = sender.currentTitle, let artist = Artists(rawValue: title) else{
            return
        }
        switch artist{
        case .singer:
            print("Singer")
        case .photographer:
            print("Photo")
        case .instrumentPlayer:
            print("Player")
        case .comedian:
            print("Comedian")
        case .barber:
            print("Barber")
        case .artist:
            print("Artist")
        case .cook:
            print("Cook")
            
            
        default:
            print("Hey")
        }
    }
    
}

