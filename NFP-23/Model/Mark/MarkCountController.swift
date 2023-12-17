//
//  MarkCountController.swift
//  NFP-23
//
//  Created by Артур Ганиев on 20.12.2023.
//

import UIKit

class MarkCountController: UITableViewController {
    
    enum SectionType {
        case personInfo
        case exercise
    }
    
    var sectionTypePosition: [SectionType] = [.personInfo, .exercise]
    var exerciseStorage: ExerciseStorageProtocol = ExerciseStorage()
    var exercisesList: [ExerciseProtocol] = []
    var categoryTypes: [CategoryTypes] = [.firstCategory, .secondCategory, .thirdCategory]
    var currentCategory: CategoryTypes!

    override func viewDidLoad() {
        loadData()
        super.viewDidLoad()
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    //
    ///
    ///
    ///fdsafgsdga
    ///
    ///
    ///
    ///
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        print("current category: \(currentCategory ?? nil)")
        super.viewWillAppear(animated)
    }
    
    private func loadData() {
        
        exercisesList = exerciseStorage.loadData()
    }
    private func configureCell(for indexPath: IndexPath) -> UITableViewCell {
        let personCell = tableView.dequeueReusableCell(withIdentifier: "personInfoIdentifier", for: indexPath) as! PersonInfoCell
        let exerciseCell = tableView.dequeueReusableCell(withIdentifier: "exerciseIndetifier", for: indexPath) as! ExerciseCell
        let sectionType = sectionTypePosition[indexPath.section]
        if sectionType == .personInfo {
            return personCell
        } else  {
            let currentExercise = exercisesList[indexPath.row]
            exerciseCell.title.text = currentExercise.title
            exerciseCell.exerciseNumber.text = String(currentExercise.number)
            exerciseCell.score.text = "0"
            return exerciseCell
        }
    }
    
    private func getNumberOfExercises(for categoryType: CategoryTypes) -> Int {
        if categoryType == .firstCategory {
            return 4
        } else  {
            return 3
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionTypePosition.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let sectionType = sectionTypePosition[section]
        if sectionType == .personInfo {
            return 1
        } else {
            return getNumberOfExercises(for: currentCategory)
            
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return configureCell(for: indexPath)
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
