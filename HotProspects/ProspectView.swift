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
    var body: some View {
        NavigationView {
             Text(title)
                .navigationBarTitle(title)
        }
       
    }
}

struct ProspectView_Previews: PreviewProvider {
    static var previews: some View {
        ProspectView(filter: .none)
    }
}
