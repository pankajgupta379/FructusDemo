//
//  SettingsRowView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 08/07/23.
//

import SwiftUI

struct SettingsRowView: View {
    var settingRow: SettingsRowModel
    var body: some View {
        HStack {
            Text(settingRow.name)
                .foregroundColor(.secondary)
            
            Spacer()
            
            if let content = settingRow.content {
                Text(content)
            } else if let linkText = settingRow.linkDestination, let linkLabel = settingRow.linkLabel {
                Link(destination: URL(string: "https://\(linkText)")!) {
                    Group {
                        Text(linkLabel)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.pink)
                    }
                    .font(.footnote)
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(settingRow: settingsRowData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
