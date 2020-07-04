//
//  LFGHomeViewController.swift
//  LearnFullGit
//
//  Created by Macbook Pro on 26/06/20.
//  Copyright © 2020 OrgwareTechnologies. All rights reserved.
//

import UIKit

class LFGHomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logoutBtnAction(_ sender: UIButton)
    {
        UserDefaults.standard.set(false, forKey: LFGConstants.isSigInDef)
        LFGConstants.appDelegate.setUpInitialViewController()
    }
    
    
}
