//
//  detailsPresenter.swift
//  VIPERDemo
//
//  Created by Priyal on 25/11/24.
//

import Foundation
import UIKit

protocol detailsPresenterInterface : AnyObject {
    func setData() 
    func removeRouter(vc : UIViewController)
  
    
}

final class detailsPresenter {
    var view : DetailsViewInterface?
    var interactor : interactorInterface?
    var router : detailsRouterInterface?
    var datas : [Model] = []
    
    init(view: DetailsViewInterface?, interactor: interactorInterface?, router: detailsRouterInterface?) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}
extension detailsPresenter :detailsPresenterInterface {
    func setData()  {
        view?.setData()
    }
    
    func removeRouter(vc: UIViewController) {
        detailsRouter.removeRouter(navigationController: vc.navigationController!)
    }

    
}
