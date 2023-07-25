//
//  FruitDetailsHeaderView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 24/06/23.
//

import SwiftUI

struct FruitDetailsHeaderView: View {
    var fruite: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruite.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruite.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
                
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(height: 440)
    }
}

struct FruitDetailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsHeaderView(fruite: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
