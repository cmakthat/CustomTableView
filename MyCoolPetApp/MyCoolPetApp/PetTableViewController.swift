//
//  PetTableViewController.swift
//  MyCoolPetApp
//
//  Created by Curtis Mak on 2017-11-15.
//  Copyright © 2017 Curtis Mak. All rights reserved.
//
/*
 
 Overall Project
 
 Create an app that displays pets in a table view. The table view will show its name and picture.
 
 
 Steps
 
 1. Create new project
 
 2. Create our data model
 
 3. Setup our UITableViewController
 
 4. Add assets and setup our testing data
 
 5. Test that our table view works with the default basic cells
 
 6. Create our custom table view cell
 
 7. Setup our table view to use the new custom cell
 
 8. Show off reloading in new data
 
 
 ** Topics to Cover **
 
 What is a custom cell? Show slides
 
 - Creating a tableview
 - Create a custom view
 - Displaying data in the custom view
 - Reload data when new data is added
 
 
 ** Create New Project **
 
 - Setup delete existing VC and create new UITableViewController in storyboard
 - Create new class for new VC with navigation embedded
 
 
 ** Create Data Model **
 
 Animal
 - name
 - picture
 
 
 ** UITableView Review **
 
 What are the minimum requirements?
 
 - Delegate (already exists in tableVC)
 - DataSource (already exists in tableVC)
 - How many rows in a section?
 - How does the cell look like or what kind of cell is it?
 
 These methods are provided for us, we just have to provide the correct information
 
 Quick test that it works with regular cells
 
 
 ** UITableViewCell Custom Setup**
 
 Apple provides a default UITableViewCell to have a text and image. But we want more!
 
 Create a custom cell!
 - Create our cell layout in storyboard
 - Add a reuse identifier
 - Create a new subclass of UITableViewCell
 - Connect outlets to new subclass from storyboard
 
 
 ** Add custom cell to tableView **
 
 - Update data array
 - Update cellForRowAt
 - Update to have cell update with attributes
 - Update row count
 
 
 ** Reload TableView with new data **
 
 We have an array to store the data and it is reflected on the UITableView
 
 Because data is stored separately, we need to update the data and tableview separately
 - Add new data
 - Update tableview
 - reload vs insert
 
 
 
 
 */


import UIKit

class PetTableViewController: UITableViewController {

    var petsData: Array<PetModel>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.petsData = Array<PetModel>()
        
        let petDogModel = PetModel(petName: "Doggie", petImage: #imageLiteral(resourceName: "dog"))
        self.petsData.append(petDogModel)
        
        let petCatModel = PetModel(petName: "Kitty", petImage: #imageLiteral(resourceName: "cat"))
        self.petsData.append(petCatModel)
        
        let petBirdModel = PetModel(petName: "Birdie", petImage: #imageLiteral(resourceName: "bird"))
        self.petsData.append(petBirdModel)
        
        let petFishModel = PetModel(petName: "Fishie", petImage: #imageLiteral(resourceName: "fish"))
        self.petsData.append(petFishModel)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.petsData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! PetTableViewCell

        let petModel = self.petsData[indexPath.row]
        
        cell.petLabel.text = petModel.petName
        cell.petImageView.image = petModel.petImage
        
        return cell
    }
    

    @IBAction func addAction(_ sender: UIBarButtonItem) {
        
        let petUnknownModel = PetModel(petName: "Unknown", petImage: #imageLiteral(resourceName: "unknown"))
        self.petsData.insert(petUnknownModel, at: 0)
        
        let array = [IndexPath.init(row: 0, section: 0)]
        self.tableView.insertRows(at: array, with: .left)
        
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
