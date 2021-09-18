//
//  ContentView.swift
//  ChallengeApp
//
//  Created by mac on 9/18/21.
//

import SwiftUI

struct PersonTabView: View {
    var body: some View {
        
        TabView {
            PersonListView()
        .tabItem {
            VStack{
                Image(systemName: "list.fill")
                Text("Employee List")
            }
        }
        
        PersonOptionView()
            .tabItem {
                VStack{
                    Image(systemName: "star.fill")
                    Text("Select View Option")
                }
            }
            
        }
    }
}

struct PersonTabView_Previews: PreviewProvider {
    static var previews: some View {
        PersonTabView()
    }
}
