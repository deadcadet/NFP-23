//
//  CategoryStorage.swift
//  NFP-23
//
//  Created by Артур Ганиев on 20.12.2023.
//

import Foundation


protocol CategoryStorageProtocol {
    func loadCategories() -> [CategoryProtocol]
}

class CategoryStorage: CategoryStorageProtocol {
    func loadCategories() -> [CategoryProtocol] {
        let testCategories: [CategoryProtocol] = [
            Category(title: "1 категория"),
            Category(title: "2 категория"),
            Category(title: "3 категория"),
            ]
        return testCategories
    }
}

enum CategoryTypes {
    case firstCategory
    case secondCategory
    case thirdCategory
}
