//
//  Category.swift
//  NFP-23
//
//  Created by Артур Ганиев on 20.12.2023.
//

import Foundation
import UIKit

protocol CategoryProtocol {
    var title: String { get set }
}

struct Category: CategoryProtocol {
    var title: String
}
