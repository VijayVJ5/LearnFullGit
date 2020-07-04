//
//  LFGSignInViewController.swift
//  LearnFullGit
//
//  Created by Macbook Pro on 26/06/20.
//  Copyright © 2020 OrgwareTechnologies. All rights reserved.
//

import UIKit

class LFGSignInViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTxtFld: UITextField!
    @IBOutlet weak var passwordTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func signInBtnAction(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: LFGConstants.isSigInDef)
        LFGConstants.appDelegate.setUpInitialViewController()
    }
    
}
