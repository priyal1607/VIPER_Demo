//
//  presenter.swift
//  VIPERDemo
//
//  Created by Priyal on 22/11/24.
//
//show details related view 
import Foundation
import UIKit

protocol presenterInterface : AnyObject {
    func getdataCount() -> Int
    func sectionCount() -> Int
    func viewload()
    func indexData(index : Int) -> Model
    func disdselect(vc : UIViewController , index :Int)
    
}

final class presenter {
    var view : ViewInterface?
    var interactor : interactorInterface?
    var routers : routherInterface?
    var datas : [Model] = []
    
    init(view: ViewInterface?, interactor: interactorInterface?, router: routherInterface?) {
        self.view = view
        self.interactor = interactor
        self.routers = router
    }
}

extension presenter : presenterInterface {
    

    func viewload() {
        fetchDatas()
        view?.setUpView()
        view?.setData()
        
    }
    
    func fetchDatas() {
        datas = interactor?.getData() ?? [Model(title: "abc", titledescription: "2132") , Model(title: "def", titledescription: "21344")]
    }
    func getdataCount() -> Int {
        return datas.count
    }
    
    func sectionCount() -> Int {
        return 1
    }
    
   
    func indexData(index: Int) -> Model {
        datas[index]
    }
    func disdselect(vc: UIViewController , index : Int) {
        router.createRouter(navigationController: vc.navigationController!, data: datas[index])
    }
    
    
    
}
