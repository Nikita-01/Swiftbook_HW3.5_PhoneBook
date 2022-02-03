//
//  ContactInfo.swift
//  PhoneBook
//
//  Created by Никита Рыжкин on 03.02.2022.
//

import SwiftUI

struct ContactInfo: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) {person in 
            Section {
                HStack {
                    Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                }
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
        .listStyle(.plain)
        .navigationTitle(persons[0].fullName)
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(persons: [Person.getContactList()[0]])
    }
}
