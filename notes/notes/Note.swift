//
//  Note.swift
//  notes
//
//  Created by Kristina Litvinova on 15.10.2024.
//

import Foundation
import CoreData

struct Note: Observable, Codable {
    var title: String
    var content: String
    var createDate: Date
    //var lastEdited: Date
}

