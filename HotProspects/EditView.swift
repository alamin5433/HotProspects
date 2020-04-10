//
//  EditView.swift
//  HotProspects
//
//  Created by Al Amin on 10/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct EditView: View {
    @EnvironmentObject var user: User
    var body: some View {
        TextField("Name", text: $user.name)
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
