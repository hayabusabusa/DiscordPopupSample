//
//  ModalViewController.swift
//  DiscordPopupSample
//
//  Created by Yamada Shunya on 2019/10/24.
//

import UIKit

final class ModalViewController: UIViewController {
    
    // MARK: IBOutlet
    
    // MARK: Properties
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction
    
    @IBAction func onTapCloseButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
