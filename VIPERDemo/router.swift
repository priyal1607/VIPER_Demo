//
//  router.swift
//  VIPERDemo
//
//  Created by Priyal on 22/11/24.
//
//contain navigation path

import Foundation
import UIKit

protocol routherInterface : AnyObject {
    
}

final class router: routherInterface {
    static func createRouter(navigationController: UINavigationController , data : Model) {
        // Instantiate the details view controller from the storyboard
        guard let view = UIStoryboard(name: "detailsView", bundle: nil).instantiateViewController(withIdentifier: "detailsVC") as? detailsVC else {
           
            print("Failed to instantiate detailsVC")
            return
        }
        view.data = data
        // Set up VIPER connections
//        let router = router()
//        let interactor = interactor()
//        let presenter = detailsPresenter(view: view, interactor: interactor, router: router)
//        view.presenterlist = presenter

        navigationController.pushViewController(view, animated: true)
    }
}
