//
//  SettingsRowModel.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 08/07/23.
//

import Foundation

struct SettingsRowModel: Identifiable {
    var id = UUID()
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
}
