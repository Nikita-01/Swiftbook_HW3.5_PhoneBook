//
//  DataManager.swift
//  PhoneBook
//
//  Created by Никита Рыжкин on 03.02.2022.
//

class DataManager {
    
    static let shared = DataManager()
        
    let names = [
        "Ivan", "Stepan", "Fedor", "Sidor",
        "Petor", "Alex", "Jack", "John",
        "Nikita", "Stan"
    ]
    
    let surnames = [
        "Ivanov", "Stepanov", "Fedorov", "Sidorov",
        "Petrov", "Alexson", "Jackson", "Johnson",
        "Nikitin", "Smith"
    ]
    
    let emails = [
        "1@mail.ru", "2@mail.ru", "3@mail.ru", "4@mail.ru",
        "5@mail.ru", "6@mail.ru", "7@mail.ru", "8@mail.ru",
        "9@mail.ru", "10@mail.ru"
    ]
    
    let phones = [
        "111-111", "222-222", "333-333", "444-444",
        "555-555", "666-666", "777-777", "888-888",
        "999-999", "101-010"
    ]
    
    private init() {}
    
}

