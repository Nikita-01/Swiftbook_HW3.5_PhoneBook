//
//  ContactListFull.swift
//  PhoneBook
//
//  Created by Никита Рыжкин on 03.02.2022.
//

import SwiftUI

struct ContactListFull: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section{
                    ContactsRows(person: person)
                } header: {
                    Text(person.fullName)
                }
            }
            .listStyle(.insetGrouped)
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactListFull_Previews: PreviewProvider {
    static var previews: some View {
        ContactListFull(persons: Person.getContactList())
    }
}
