//
//  interactor.swift
//  VIPERDemo
//
//  Created by Priyal on 22/11/24.
//
//contain business logic
protocol interactorInterface: AnyObject {
    func getData() -> [Model]?
}

class interactor: interactorInterface {
    private var data: [Model] = [
        Model(title: "First Title", titledescription: "description 1"),
        Model(title: "Second Title", titledescription: "description 2"),
        Model(title: "Third Title", titledescription: "description 3")
    ]

    func getData() -> [Model]? {
        return data
    }
}
