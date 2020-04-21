//
//  ContentView.swift
//  HotProspects
//
//  Created by Al Amin on 10/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   var prospects = Prospects()
    var body: some View {
        TabView {
            ProspectView(filter: .none)
            .tabItem {
                Image(systemName: "person.3")
                Text("Everyone")
            }
            
            ProspectView(filter: .contacted)
                .tabItem{
                    Image(systemName: "checkmark.circle")
                    Text("Contacted")
            }
            
            ProspectView(filter: .uncontacted)
                .tabItem {
                    Image(systemName:"questionmark.diamond")
                    Text("Uncontacted")
            }
            MeView()
                .tabItem {
                    Image(systemName: "person.crop.square")
                    Text("Me")
            }
            
        }
    .environmentObject(prospects)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
