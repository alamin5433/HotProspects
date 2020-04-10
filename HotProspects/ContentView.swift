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
    var body: some View {
        VStack {
            EditView()
            DisplayView()
        }
            .environmentObject(user)
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
