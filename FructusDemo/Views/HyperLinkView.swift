//
//  HyperLinkView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 27/06/23.
//

import SwiftUI

struct HyperLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                        Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct HyperLinkView_Previews: PreviewProvider {
    static var previews: some View {
        HyperLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
