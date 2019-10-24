//
//  AwesomePopupViewController.swift
//  DiscordPopupSample
//
//  Created by Yamada Shunya on 2019/10/24.
//

import UIKit

final class AwesomePopupViewController: UIViewController {
    
    // MARK: IBOutlet
    
    @IBOutlet weak var contentView: UIView!
    
    // MARK: Properties
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

// MARK: - Setup

extension AwesomePopupViewController {
    
    func setupUI() {
        contentView.layer.cornerRadius = 8.0
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowOpacity = 0.4
        contentView.layer.shadowRadius = 4.0
        contentView.layer.shadowOffset = CGSize(width: 3, height: 6)
    }
}

// MARK: - Touch event

extension AwesomePopupViewController {
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first,
            !touch.view!.isDescendant(of: contentView) else { return }
        dismiss(animated: true, completion: nil)
    }
}
