//
//  PersonListView.swift
//  ChallengeApp
//
//  Created by mac on 9/18/21.
//

import SwiftUI

struct PersonListView: View {
    @EnvironmentObject var model: PersonModel
    var person: Person
    var body: some View {
        
        VStack(alignment: .leading) {
            
            if model.showName {
                Text("Name: \(person.name)")
            }
            
            if model.showAddress {
                Text("Address: \(person.address)")
            }
            
            if model.showCompany {
                Text("Company: \(person.company)")
            }
            
            if model.showYears {
                Text("Years of Experience: \(person.yearsOfExperience)")
            }
        
        }
      
        
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView(person: Person(
            name: "Mamma Mia",
            address: "123 Candy Lane",
            company: "CodeWithChris",
            yearsOfExperience: 99
        ))
            .environmentObject(PersonModel())
    }
}
