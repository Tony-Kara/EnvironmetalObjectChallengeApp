//
//  ContentView.swift
//  ChallengeApp
//
//  Created by mac on 9/18/21.
//

import SwiftUI

struct PersonTabView: View {
    @EnvironmentObject var model: PersonModel
    var body: some View {
        
        TabView {
            
            VStack{
                
                Text("People")
                    .font(.title)
                    .bold()
                
                List(model.person) { person in
                    PersonListView(person: person)
                }
            }
          
                
        .tabItem {
            VStack{
                Image(systemName: "person.2")
                Text("Employee List")
            }
        }
        
            VStack{
                Text("Display Preferences")
                    .font(.title)
                    .bold()
                
                Toggle("Show name:", isOn: $model.showName)
                Toggle("Show address:", isOn: $model.showAddress)
                
                Toggle("Show company:", isOn: $model.showCompany)
                
                Toggle("Show years of experience:", isOn: $model.showYears)
                
                Spacer()
            }
            .padding()
            .tabItem {
                VStack{
                    Image(systemName: "gearshape")
                    Text("Select View Option")
                }
            }
            
        }
    }
}

struct PersonTabView_Previews: PreviewProvider {
    static var previews: some View {
        PersonTabView()
            .environmentObject(PersonModel())
    }
}
