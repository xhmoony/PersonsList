//
//  UserViewController.swift
//  PersonsList
//
//  Created by Владимир Х. on 18.09.2022.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    @IBOutlet var backView: UIView!
    @IBOutlet var frontView: UIView!
    
    @IBOutlet var avatarNameLabel: UILabel!
    @IBOutlet var avatarSurnameLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backView.layer.cornerRadius = backView.frame.width / 2
        backView.layer.borderWidth = 10
        backView.layer.borderColor = UIColor.lightGray.cgColor
        
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        avatarNameLabel.text = person.firstLetterOfName
        avatarSurnameLabel.text = person.firstLetterOfSurname

    }
}
