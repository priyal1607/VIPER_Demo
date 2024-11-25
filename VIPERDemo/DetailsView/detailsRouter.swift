//
//  detailsRouter.swift
//  VIPERDemo
//
//  Created by Priyal on 25/11/24.
//

import Foundation
import UIKit
protocol detailsRouterInterface : AnyObject {
    
}
final class detailsRouter: detailsRouterInterface {
    static func removeRouter(navigationController: UINavigationController){
        navigationController.popViewController(animated: false)
    }
 
}
