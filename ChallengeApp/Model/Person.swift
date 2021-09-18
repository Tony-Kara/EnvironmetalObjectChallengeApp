//
//  Person.swift
//  ChallengeApp
//
//  Created by mac on 9/18/21.
//

import Foundation

struct Person : Identifiable { //Ensure these conforms to Identifiable
    var id = UUID()
    var name: String
    var address: String
    var company: String
    var yearsOfExperience: Int
}
