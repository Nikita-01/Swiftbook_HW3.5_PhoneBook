//
//  ContactInfo.swift
//  PhoneBook
//
//  Created by Никита Рыжкин on 03.02.2022.
//

import SwiftUI

struct ContactInfo: View {
    let choosenPerson: [Person]
    
    var body: some View {
        List(choosenPerson) { person in
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 200, height: 200)
            ContactsRows(person: person)
        }
        .listStyle(.grouped)
        .navigationTitle(choosenPerson[0].fullName)
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(choosenPerson: [Person.getContactList()[0]])
    }
}
