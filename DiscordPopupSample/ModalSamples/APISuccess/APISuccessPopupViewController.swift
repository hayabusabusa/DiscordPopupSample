//
//  APISuccessPopupViewController.swift
//  DiscordPopupSample
//
//  Created by Yamada Shunya on 2019/10/24.
//

import UIKit

final class APISuccessPopupViewController: UIViewController {
    
    // MARK: IBOutlet
    
    // MARK: Properties
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: Touch event

extension APISuccessPopupViewController {
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
    }
}
