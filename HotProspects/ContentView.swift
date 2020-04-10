//
//  ContentView.swift
//  HotProspects
//
//  Created by Al Amin on 10/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let user = User()
    @State private var selectedTab = 0
    var body: some View {
        /*VStack {
            EditView()
            DisplayView()
        }
            .environmentObject(user)
 
 */
        TabView (selection: $selectedTab){
            EditView()
            .environmentObject(user)
                .onTapGesture {
                    self.selectedTab = 1
                }
            .padding()
                .tabItem {
                    Image(systemName: "star")
                    Text("One")
                }
            .tag(0)
            
            DisplayView().environmentObject(user)
                .tabItem {
                    Image(systemName: "star")
                    Text("two")
                }
        .tag(1)
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
