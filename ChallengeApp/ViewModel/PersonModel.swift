//
//  PersonModel.swift
//  ChallengeApp
//
//  Created by mac on 9/18/21.
//

import Foundation

class PersonModel: ObservableObject {
    
        @Published var person = [Person]()
    
    init() {
        
        person.append(Person(name: "Tony", address: "Lagos", company: "NeuroLeap", yearsOfExperience: 1))
    }
    
}
