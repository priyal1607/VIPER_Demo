//
//  detailsInteractor.swift
//  VIPERDemo
//
//  Created by Priyal on 25/11/24.
//

import Foundation
protocol detailsInteractorInterface: AnyObject {
    func getData() -> [Model]?
}

class detailsInteractor: detailsInteractorInterface {
    private var data: [Model] = [
        Model(title: "abc", titledescription: "description 1"),
        Model(title: "def", titledescription: "description 2"),
        Model(title: "def", titledescription: "description 3")
    ]

    func getData() -> [Model]? {
        return data
    }
}
