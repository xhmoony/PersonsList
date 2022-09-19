//
//  Persons.swift
//  PersonsList
//
//  Created by Владимир Х. on 17.09.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var firstLetterOfName: String {
        "\(name.first!)"
        
    }
    
    var firstLetterOfSurname: String {
        "\(surname.first!)"
    }
}


extension Person {
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let names = Data.dataTransfer.names.shuffled()
        let surnames = Data.dataTransfer.surnames.shuffled()
        let emails = Data.dataTransfer.emails.shuffled()
        var phones: [String] = [].shuffled()
        
        for _ in 1...10 {
            let random = Int.random(in: 1111111111...9999999999)
            phones.append("+7\(random)")
        }
        
        for i in 0..<names.count {
            let person = Person(
                name: names[i],
                surname: surnames[i],
                email: emails[i],
                phone: phones[i]
            )
            persons.append(person)
        }
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}



