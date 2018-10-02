//
//  MealListTableViewController.swift
//  MealApp
//
//  Created by student on 02.10.2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class MealListTableViewController: UITableViewController {
    
    var meals: [Meal] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMeals()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func saveMeals(){
        
    }
    
    func loadMeals(){
        meals += [
        Meal(
            name: "Гамбургер",
            photo: UIImage(named: "BigKing")!,
            notes: "Самый дешевый",
            rating: 3,
            timestamp: Date()
        ),
        Meal(
            name: "Чизбургер",
            photo: UIImage(named: "СЫРНЫЙ-ЖО_сайт")!,
            notes: "С сыром",
            rating: 5,
            timestamp: Date()
            ),
            
            Meal(
                name: "Чикенбургер",
                photo: UIImage(named: "Grill_Chicken_BBQ2")!,
                notes: "С курицей",
                rating: 4,
                timestamp: Date()
            ),
            
            Meal(
                name: "Фишбургер",
                photo: UIImage(named: "FishKing")!,
                notes: "С рыбой",
                rating: 1,
                timestamp: Date()
            ),
            
            Meal(
                name: "Стейкхауз",
                photo: UIImage(named: "Steakhouse")!,
                notes: "С беконом",
                rating: 2,
                timestamp: Date()
            )
        ]
        
    }
    
    override func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let meal = meals[indexPath.row]
        cell.textLabel?.text = meal.name
        cell.imageView?.image = meal.photo
        return cell
    }

}

