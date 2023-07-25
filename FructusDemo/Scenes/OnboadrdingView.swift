//
//  OnboadrdingView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 17/06/23.
//

import SwiftUI

struct OnboadrdingView: View {
    var fruitData: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruitData) { item in
                CardView(fruit: item)
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

struct OnboadrdingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboadrdingView()
    }
}
