//
//  ContentView.swift
//  PhoneBook
//
//  Created by Никита Рыжкин on 03.02.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            ContactListFull(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
