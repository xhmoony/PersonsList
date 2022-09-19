//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Владимир Х. on 15.09.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }

    
    private func setTabBar() {
        let persons = Person.getPersons()
        let firstView = viewControllers?.first as! FirstTableViewController
        let secondView = viewControllers?.last as! SecondTableViewController
        
        firstView.persons = persons
        secondView.persons = persons
    }
}
