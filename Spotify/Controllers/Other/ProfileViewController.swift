//
//  ProfileViewController.swift
//  Spotify
//
//  Created by Arthur Dionizio on 28/03/22.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Profile"
        
        APICaller.shared.getCurrentUserProfile { result in
            switch result {
            case .success(let model):
                break
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
        
    }
    
}
