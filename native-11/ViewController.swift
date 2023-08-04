//
//  ViewController.swift
//  native-11
//
//  Created by PT Phincon on 04/08/23.
//

import UIKit
import React

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .orange
    }
    
    @IBAction func onButtonTap(_ sender: Any) {
        guard let jsBundleLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle") else { return }
        
        //The data is used as initialProperties to React Native App.
        let data:NSDictionary = [:]; //We can use this parameter to pass the data to the React native App from the Native App.
        //The RCTRootView is a native view used to host React-managed views within the app. Can be used just like any ordinary UIView.
        
//        guard let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios") else { return }
        
        let rootView = RCTRootView(
            bundleURL: jsBundleLocation,
            moduleName: "RN0687",
            initialProperties: data as [NSObject : AnyObject],
            launchOptions: nil
        )
        
        let viewController = UIViewController()
        viewController.view = rootView
        self.present(viewController, animated: true, completion: nil)
    }
    
}

