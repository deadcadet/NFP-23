//
//  CategoryController.swift
//  NFP-23
//
//  Created by Артур Ганиев on 20.12.2023.
//

import UIKit

class CategoryController: UITableViewController {
    
    var categories: [CategoryProtocol] = []
    var categoriesStorage: CategoryStorageProtocol = CategoryStorage()
    lazy var markCountController: MarkCountController = getMarkCountController()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCategories()
        //print(categories[0].title)
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    private func getMarkCountController() -> MarkCountController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let markCountController = storyboard.instantiateViewController(identifier: "MarkCountController")
        return markCountController as! MarkCountController
    }
    private func loadCategories() {
       categories = categoriesStorage.loadCategories()
    }
    
    private func configureCell(for indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryIdentifier", for: indexPath) as! CategoryCell
        cell.title.text = categories[indexPath.row].title
       // print(cell.title.text ?? 0)
        return cell
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        configureCell(for: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("selected \(indexPath.row)")
        tableView.deselectRow(at: indexPath, animated: true)
        markCountController.currentCategory = markCountController.categoryTypes[indexPath.row]
        self.navigationController?.pushViewController(markCountController, animated: true)
        //show(markCountController, sender: tableView)
        //present(markCountController, animated: true)
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
