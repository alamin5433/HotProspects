//
//  ProspectView.swift
//  HotProspects
//
//  Created by Al Amin on 20/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ProspectView: View {
    enum FilterType {
        case none,contacted,uncontacted
    }
    
    @EnvironmentObject var prospects: Prospects
    let filter: FilterType
    var title: String {
        switch filter {
        case .none:
            return "Every One"
        case .contacted:
            return "Connected People"
        case .uncontacted:
            return "Unconnected People"
            
        }
    }
    
    var filteredProspects: [Prospect] {
        switch filter {
        case .none:
            return prospects.people
        case .contacted:
            return prospects.people.filter{$0.isContacted}
        case .uncontacted:
        return prospects.people.filter{ !$0.isContacted}
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredProspects) { prospect in
                    VStack (alignment: .leading) {
                        Text(prospect.name)
                            .font(.headline)
                        Text(prospect.emailAddress)
                            .foregroundColor(.secondary)
                    }
                    
                }
            }
                .navigationBarTitle(title)
                .navigationBarItems(trailing: Button(action: {
                    let prospect = Prospect()
                    prospect.name = "Alamin"
                    prospect.emailAddress = "adf"
                    self.prospects.people.append(prospect)
                    
                }) {
                    Image(systemName: "qrcode.viewfinder")
                    Text("Scan")
                })
        }
       
    }
}

struct ProspectView_Previews: PreviewProvider {
    static var previews: some View {
        ProspectView(filter: .none)
    }
}
