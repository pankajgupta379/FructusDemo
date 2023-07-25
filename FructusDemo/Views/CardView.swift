//
//  CardView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 18/06/23.
//

import SwiftUI

struct CardView: View {
    
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            VStack {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 5, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .padding(.horizontal, 16)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 480)
                
                CustomButtonView()
                    .padding(.top, 8)
                
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: fruitsData[0])
    }
}
