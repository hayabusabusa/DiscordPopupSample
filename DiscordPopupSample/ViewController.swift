//
//  ViewController.swift
//  DiscordPopupSample
//
//  Created by Yamada Shunya on 2019/10/24.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// MARK: - Popover delegate

extension ViewController: UIPopoverPresentationControllerDelegate {
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
}

// MARK: - TableView delegate

extension ViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                let vc = UIStoryboard(name: "ModalViewController", bundle: nil).instantiateInitialViewController()!
                present(vc, animated: true, completion: nil)
            case 1:
                break
            default:
                break
            }
        case 1:
            switch indexPath.row {
            case 0:
                let vc = UIStoryboard(name: "APISuccessPopupViewController", bundle: nil).instantiateInitialViewController()!
                present(vc, animated: true, completion: nil)
            case 1:
                let vc = UIStoryboard(name: "AwesomePopupViewController", bundle: nil).instantiateInitialViewController()!
                present(vc, animated: true, completion: nil)
            default:
                break
            }
        default:
            break
        }
    }
}
