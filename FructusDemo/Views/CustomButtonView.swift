//
//  CustomButtonView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 20/06/23.
//

import SwiftUI

struct CustomButtonView: View {
    
    @AppStorage("isOnboardingView") var isOnboardingView: Bool?
    
    var body: some View {
        Button {
            isOnboardingView = false
        } label: {
            HStack {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(Color.white)

    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
    }
}
