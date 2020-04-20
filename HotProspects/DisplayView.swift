//
//  DisplayView.swift
//  HotProspects
//
//  Created by Al Amin on 10/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct DisplayView: View {
    @EnvironmentObject var user: User
    var body: some View {
        Text("user.name")
    }
}

struct DisplayView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView()
    }
}
