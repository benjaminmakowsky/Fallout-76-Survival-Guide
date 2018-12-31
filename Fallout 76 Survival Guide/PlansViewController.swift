//
//  PlansViewController.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 12/15/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//

import UIKit
import CoreData

class PlansViewController: UIViewController, UISearchBarDelegate {

    //Interfaces
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    //Variables
    var planList: [PlanItems] = []
    var filteredPlans: [PlanItems] = []
    //var planListTest = Plan.loadBuildingPlans()
    var isSearching = false
    
    
    //Create a fetch request to get the plan plan data
    let fetchRequest: NSFetchRequest<PlanItems> = PlanItems.fetchRequest()
    
   //Create a seperate fetch request for each type of plan
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBar()
      
      
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        
        //Attempt to load data from storage
        do {
            planList = try PersistenceService.context.fetch(fetchRequest)
        } catch  {}
        print(planList.count)
        
        //Check for an empty plan list and if it is empty load it from coad and save to device
        if planList.isEmpty {
            for item in Plan.loadBuildingPlans() {
                
                //Create a plan object that can be stored into the PersistanceService context container
                let plan = PlanItems(context: PersistenceService.context)
                
                //Populate the plans items
                plan.isFound = false
                plan.name = item.planName
                plan.location = item.planLocation
                
                //Load and save item
                planList.append(plan)
                PersistenceService.saveContext()
            }
        }
    }

    
    //Searchbar functionality
    func setNavBar() {
        searchBar.showsCancelButton = true
        searchBar.placeholder = "Enter Name Of Plan"
        searchBar.delegate = self
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearching = false;
        searchBar.endEditing(true)
        tableView.reloadData()
    }
    
    func search(){
        isSearching = true
        filteredPlans = planList.filter{$0.name!.lowercased().contains(searchBar.text!.lowercased())}
        searchBar.endEditing(true)
        tableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        search()
    }
}




extension PlansViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print("Counting Plan Items: " + String(planList.count))
        if(isSearching){
            return filteredPlans.count
        }else{
            return planList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //print("Loading Cells")
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanCell") as! PlanCell
        
        
        //The current plan item
        //print("Loading Plans")
        var plan: PlanItems
        if(isSearching){
            plan = filteredPlans[indexPath.row]
        }else{
            plan = planList[indexPath.row]
        }
        
        //Load the cell
        print("Loading cells")
        cell.setLocation(location: plan.location!)
        cell.setPlanName(name: plan.name!)
        if(plan.isFound){
            cell.setFoundLabel(status: "Found")
            cell.FoundLabel.textColor = .gray
            cell.PlanLabel.textColor = .gray
            cell.LocationLabel.textColor = .gray
        }
        else{
            cell.setFoundLabel(status: "Not Found")
            cell.FoundLabel.textColor = .green
            cell.FoundLabel.font = UIFont.boldSystemFont(ofSize: 16)
            cell.PlanLabel.textColor = UIColor(red: 234/255, green: 225/255, blue: 149/255, alpha: 1)
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        planList[indexPath.row].isFound = !planList[indexPath.row].isFound
        tableView.reloadData()
        PersistenceService.saveContext()
        
    }
    
}
