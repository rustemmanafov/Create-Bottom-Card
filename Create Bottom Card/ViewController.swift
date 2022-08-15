//
//  ViewController.swift
//  Create Bottom Card
//
//  Created by Rustem Manafov on 15.08.22.
//

import UIKit
import BLTNBoard

class ViewController: UIViewController {
    
    private lazy var boardManager: BLTNItemManager = {
        
        let item = BLTNPageItem(title: "Push notifications")
        item.image = UIImage(named: "bell")
        item.actionButtonTitle = "Continue"
        item.alternativeButtonTitle = "Maybe Later"
        item.descriptionText = "Would you like to stay in the loop and get notifications?"
        
        
        item.actionHandler = { _ in
            ViewController.didtapBoardContinue()
        }
        
        item.alternativeHandler = { _ in
            ViewController.didTapBoardSkip()

        }
        
        return BLTNItemManager(rootItem: item)
    }()

    @IBOutlet weak var btnOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnOutlet.layer.cornerRadius = 15
    }

    @IBAction func btnAction(_ sender: Any) {
        boardManager.showBulletin(above: self)
    }
    
    static func didtapBoardContinue() {
        print("Did tap continue")
    }
    
    static func didTapBoardSkip() {
        print("Did tap skip")

    }
    
}

