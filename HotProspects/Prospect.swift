//
//  Prospect.swift
//  HotProspects
//
//  Created by Al Amin on 21/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

class Prospect: Identifiable, Codable {
    let id = UUID()
    var name = "Anonymous"
    var emailAddress = ""
    var isContacted = true
}

class Prospects: ObservableObject {
    @Published var people: [Prospect]
    
    init() {
        self.people = []
    }
}
