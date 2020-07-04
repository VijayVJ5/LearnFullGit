//
//  LFGSignInViewController.swift
//  LearnFullGit
//
//  Created by Macbook Pro on 26/06/20.
//  Copyright © 2020 OrgwareTechnologies. All rights reserved.
//

import UIKit

class LFGSignInViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var userNameTxtFld: UITextField!
    @IBOutlet weak var passwordTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         alerrView()
    }
    
    func alerrView(){
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
              switch action.style{
              case .default:
                    print("default")

              case .cancel:
                    print("cancel")

              case .destructive:
                    print("destructive")
        }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func signInBtnAction(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: LFGConstants.isSigInDef)
        LFGConstants.appDelegate.setUpInitialViewController()
    }
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        self.alerrView()
    }
}
