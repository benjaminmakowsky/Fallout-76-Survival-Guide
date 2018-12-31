//
//  QuestViewController.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 12/31/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//

import UIKit

class QuestViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var searchController = UISearchController()
    var quests: [Quest] = []
    var filteredQuests: [Quest] = []
    var isSearching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBar()
        
        //Which list of quests to initially load
        quests = Quest.loadQuests()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setNavBar() {      
        searchBar.showsCancelButton = true
        searchBar.placeholder = "Enter Name or Description"
        searchBar.delegate = self
    }
    
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearching = false;
        searchBar.endEditing(true)
        tableView.reloadData()
    }
    func search(){
        isSearching = true
        filteredQuests = quests.filter{$0.title.lowercased().contains(searchBar.text!.lowercased())}
        searchBar.endEditing(true)
        tableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        search()
    }
    
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Identify which segue is being used
        if segue.identifier == "QuestToDetail" {
            
            let destVC = segue.destination as! DetailViewContollerViewController
            destVC.quest = sender as? Quest
        }
    }*/
    
    
    
    func sortByName(type: String) {
        if type == "Increasing"{
            quests.sort(by: {$0.title < $1.title})
            tableView.reloadData()
        }else{
            quests.sort(by: {$0.title > $1.title})
            tableView.reloadData()
        }
    }

}



//Extend the use of a table view
extension PerkCardTableViewController: UITableViewDataSource, UITableViewDelegate{
    
    //Determine how many rows are in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearching{
            return filteredQuests.count
        }else{
            return quests.count
        }
    }
    
    //Determine what the cell will look like
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestCellID") as! QuestCell
        var quest: Quest
        //Used to determine how to fill table view
        if isSearching{
             quest = filteredCards[indexPath.row]
        }else{
             quest = quests[indexPath.row]
        }
        
        cell.setTitle(name: quest.title)
        return cell
    }

	/*
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var perk: Perk
        if isSearching {
            perk = filteredCards[indexPath.row]
        }else{
            perk = quests[indexPath.row]
        }
        performSegue(withIdentifier: "MasterToDetail", sender: perk)
    }
    /*
    
}

