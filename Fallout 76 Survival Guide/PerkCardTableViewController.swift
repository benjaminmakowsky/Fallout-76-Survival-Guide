//
//  PerkCardTableViewController.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 11/24/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//

import UIKit


class PerkCardTableViewController: UIViewController, UISearchBarDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var perceptionBtn: UIToolbar!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var searchController = UISearchController()
    var cards: [Perk] = []
    var filteredCards: [Perk] = []
    var isSearching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBar()
        
        //Which list of cards to initially load
        cards = Perk.createStrength()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setNavBar() {
        
        
        //navigationItem.searchController = searchController
        searchBar.showsCancelButton = true
        searchBar.placeholder = "Enter Name or Description"
        searchBar.delegate = self
        
        //self.navigationItem.titleView = searchBar
        
        //navigationItem.searchController = searchController
        //navigationItem.hidesSearchBarWhenScrolling = false //Used to always show search bar
    }
    
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearching = false;
        searchBar.endEditing(true)
        tableView.reloadData()
    }
    func search(){
        if (searchBar.text == nil || searchBar.text == ""){
            isSearching = false
            view.endEditing(true)
            tableView.reloadData()
        }else{
            isSearching = true
            filteredCards = cards.filter{$0.title.lowercased().contains(searchBar.text!.lowercased()) || $0.descriptions[0].lowercased().contains(searchBar.text!.lowercased())}
            searchBar.endEditing(true)
            tableView.reloadData()
        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        search()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Identify which segue is being used
        if segue.identifier == "MasterToDetail" {
            
            let destVC = segue.destination as! DetailViewContollerViewController
            destVC.perk = sender as? Perk
        }
    }
    
    
    
    @IBAction func ChangeStrength(_ sender: Any) {
        cards = Perk.createStrength()
        search()
        tableView.reloadData()
        navigationItem.title = "Strength"
    }
    
    
    @IBAction func ChangePerception(_ sender: Any) {
        cards = Perk.createPerception()
        search()
        tableView.reloadData()
        navigationItem.title = "Perception"
    }
    @IBAction func ChangeEndurance(_ sender: Any) {
        cards = Perk.createEndurance()
        search()
        tableView.reloadData()
        navigationItem.title = "Endurance"
    }
    @IBAction func CreateCharisma(_ sender: Any) {
        cards = Perk.createCharisma()
        search()
        tableView.reloadData()
        navigationItem.title = "Charisma"
    }
    
    @IBAction func CreateIntelligence(_ sender: Any) {
        cards = Perk.createIntelligence()
        search()
        tableView.reloadData()
        navigationItem.title = "Intelligence"
    }
    
    @IBAction func CreateAgility(_ sender: Any) {
        cards = Perk.createAgility()
        search()
        tableView.reloadData()
        navigationItem.title = "Agility"
    }
    
    @IBAction func CreateLuck(_ sender: Any) {
        cards = Perk.createLuck()
        search()
        tableView.reloadData()
        navigationItem.title = "Luck"
    }
    
    @IBAction func SortBtnClicked(_ sender: Any) {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let levelDecreasing = UIAlertAction(title: "Level: Decreasing", style: .default){ action in
            self.sortByLevel(type: "Decreasing")
        }
        
        let levelIncreasing = UIAlertAction(title: "Level: Increasing", style: .default){ action in
            self.sortByLevel(type: "Increasing")
        }
        
        let nameIncreasing = UIAlertAction(title: "Alphabetical", style: .default){ action in
            self.sortByName(type: "Increasing")
        }
        
        let nameDecreasing = UIAlertAction(title: "Reverse-Alphabetical", style: .default){ action in
            self.sortByName(type: "Decreasing")
        }
        
        alert.addAction(levelIncreasing)
        alert.addAction(levelDecreasing)
        alert.addAction(nameIncreasing)
        alert.addAction(nameDecreasing)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    func sortByLevel(type: String){
        if type == "Increasing"{
            cards.sort(by: {$0.levelAttainable < $1.levelAttainable})
            tableView.reloadData()
        }else{
            cards.sort(by: {$0.levelAttainable > $1.levelAttainable})
            tableView.reloadData()
        }
    }
    
    func sortByName(type: String) {
        if type == "Increasing"{
            cards.sort(by: {$0.title < $1.title})
            tableView.reloadData()
        }else{
            cards.sort(by: {$0.title > $1.title})
            tableView.reloadData()
        }
    }

}


//Extend the use of a table view
extension PerkCardTableViewController: UITableViewDataSource, UITableViewDelegate{
    
    //Determine how many rows are in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearching{
            return filteredCards.count
        }else{
            return cards.count
        }
    }
    
    //Determine what the cell will look like
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PerkCell") as! CardCell
        var card: Perk
        //Used to determine how to fill table view
        if isSearching{
             card = filteredCards[indexPath.row]
        }else{
             card = cards[indexPath.row]
        }
        
        cell.setTitle(name: card.title)
        cell.setLevelReq(level: "Level Available: " + String(card.levelAttainable))
        cell.setPerkImage(pic: card.image)
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var perk: Perk
        if isSearching {
            perk = filteredCards[indexPath.row]
        }else{
            perk = cards[indexPath.row]
        }
        performSegue(withIdentifier: "MasterToDetail", sender: perk)
    }
    
    
}
