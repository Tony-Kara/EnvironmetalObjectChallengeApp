//
//  Person.swift
//  ChallengeApp
//
//  Created by mac on 9/18/21.
//

import Foundation

struct Person : Identifiable {
    var id = UUID()
    var name: String
    var address: String
    var company: String
    var yearsOfExperience: Int
}
