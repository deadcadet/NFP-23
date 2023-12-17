//
//  ExerciseStorage.swift
//  NFP-23
//
//  Created by Артур Ганиев on 20.12.2023.
//

import Foundation


protocol ExerciseStorageProtocol {
    func loadData() -> [ExerciseProtocol]
}

class ExerciseStorage: ExerciseStorageProtocol {
    func loadData() -> [ExerciseProtocol] {
        let testExercisesList: [ExerciseProtocol] = [
            ex1, ex17, ex19, ex68, ex70
        ]
        return testExercisesList
    }
}


let ex1: ExerciseProtocol = Exercise(title: "Отжимания", number: 1, type: .general, scoreTable: ex1ScoreTable, exerciseDividedByWeight: false, exerciseDividedByAge: false)
let ex17: ExerciseProtocol = Exercise(title: "Бег 3 км", number: 17, type: .general, scoreTable: ex17ScoreTable, exerciseDividedByWeight: false, exerciseDividedByAge: false)
let ex19: ExerciseProtocol = Exercise(title: "Бег 10х10", number: 19, type: .general, scoreTable: ex19ScoreTable, exerciseDividedByWeight: false, exerciseDividedByAge: false)
let ex68: ExerciseProtocol = Exercise(title: "Упор лежа на предплечьях", number: 68, type: .special, scoreTable: ex68ScoreTable, exerciseDividedByWeight: false, exerciseDividedByAge: false)
let ex70: ExerciseProtocol = Exercise(title: "Вис на перекладине", number: 70, type: .special, scoreTable: ex70ScoreTable, exerciseDividedByWeight: false, exerciseDividedByAge: false)
