//
//  LFGHomeViewController.swift
//  LearnFullGit
//
//  Created by Macbook Pro on 26/06/20.
//  Copyright © 2020 OrgwareTechnologies. All rights reserved.
//

import UIKit

class LFGHomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func alerrView(){
        let alert = UIAlertController(title: "HomeView Alert", message: "Message", preferredStyle: .alert)
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
    
    @IBAction func logoutBtnAction(_ sender: UIButton)
    {
        UserDefaults.standard.set(false, forKey: LFGConstants.isSigInDef)
        LFGConstants.appDelegate.setUpInitialViewController()
    }
    
    @IBAction func moveToHome(_ sender: Any) {
        alerrView()
    }
    
}
