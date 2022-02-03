//
//  ContactList.swift
//  PhoneBook
//
//  Created by Никита Рыжкин on 03.02.2022.
//

import SwiftUI

struct ContactList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: ContactInfo(persons: [person])) {
                    Text("\(person.fullName)")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getContactList())
    }
}
