//
//  FruitItemView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 23/06/23.
//

import SwiftUI

struct FruitItemView: View {
    var fruit: Fruit
    var body: some View {
        HStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 80, maxHeight: 80, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
        }
    }
}

struct FruitItemView_Previews: PreviewProvider {
    static var previews: some View {
        FruitItemView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
