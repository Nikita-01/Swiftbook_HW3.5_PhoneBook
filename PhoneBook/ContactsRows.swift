//
//  ContactsRows.swift
//  PhoneBook
//
//  Created by Никита Рыжкин on 04.02.2022.
//

import SwiftUI

struct ContactsRows: View {
    let person: Person
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.blue)
            Text(person.phoneNumber)
        }
        HStack {
            Image(systemName: "tray")
                .foregroundColor(.blue)
            Text(person.email)
        }
    }
}

struct ContactsRows_Previews: PreviewProvider {
    static var previews: some View {
        ContactsRows(person: Person.getContactList()[0])
    }
}
