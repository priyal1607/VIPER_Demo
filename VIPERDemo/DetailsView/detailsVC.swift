//
//  detailsVC.swift
//  VIPERDemo
//
//  Created by Priyal on 22/11/24.
//

import UIKit

protocol DetailsViewInterface : NSObject {
    func setData()
}


class detailsVC: UIViewController {
    
    
    @IBOutlet weak var descTitle: UILabel!
    var data : Model?
    var presenterlist: detailsPresenterInterface?{
        didSet {
            presenterlist?.setData()
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //   let interactorInstance = interactor()
        // let routehr = router()
        let presenterInstance = detailsPresenter(view: self, interactor: nil, router: nil)
        self.presenterlist = presenterInstance
        
        // Do any additional setup after loading the view.
    }
    @IBAction func btnBackAction(_ sender: UIButton) {
        presenterlist?.removeRouter(vc: self)
    }
}
extension detailsVC : DetailsViewInterface {
       
    func setData() {
        descTitle.text = data?.titledescription
    }

}
