//
//  Exercise.swift
//  NFP-23
//
//  Created by Артур Ганиев on 20.12.2023.
//

import Foundation

enum ExerciseType: Int {
    case general
    case special
}
/////
//
///
protocol ExerciseProtocol {
    var title: String { get }
    var number: Int { get }
    var type: ExerciseType { get }
    var scoreTable: [String:Int] { get }
    var exerciseDividedByWeight: Bool { get set }
    var exerciseDividedByAge: Bool { get set }
}

struct Exercise: ExerciseProtocol {
    var title: String
    var number: Int
    var type: ExerciseType
    var scoreTable: [String : Int]
    var exerciseDividedByWeight: Bool
    var exerciseDividedByAge: Bool
}

