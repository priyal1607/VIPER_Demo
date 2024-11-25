//
//  ViewController.swift
//  VIPERDemo
//
//  Created by Priyal on 21/11/24.
//





//viper :
    //V = view : display data to the user
    //i = interactor : contain business logic
    //p = presenter : preapare content for dispaly
    //e = entity :
    //r = router :

import UIKit

protocol ViewInterface : NSObject {
    func setUpView()
    func setData()
}
class tblCVC: UITableViewCell {
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var mainLbl: UILabel!
   
    func configureLabels(with model: Model) {
        mainLbl.superview?.layer.cornerRadius = 10
        mainLbl.superview?.backgroundColor = .brown
        mainLbl.text = model.title
        descriptionLbl.text = model.titledescription
    }
}


class ViewController: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    var presenterlist: presenterInterface?{
        didSet {
            presenterlist?.viewload()
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden  = true
        let interactorInstance = interactor()
        let routehr = router()
        let presenterInstance = presenter(view: self, interactor: interactorInstance, router: routehr)
        self.presenterlist = presenterInstance
    }
    
}

extension ViewController : ViewInterface {
    func setUpView() {
        tblView.delegate = self
        tblView.dataSource = self
    }
    
    func setData() {
    }
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  presenterlist?.getdataCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "tblCVC", for: indexPath) as! tblCVC
        cell.configureLabels(with: presenterlist?.indexData(index: indexPath.row) ?? Model(title: "hew", titledescription: "wkjeme"))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select")
        presenterlist?.disdselect(vc: self, index: indexPath.row)
    }
}
