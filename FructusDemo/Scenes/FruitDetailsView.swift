//
//  FruitDetailsView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 24/06/23.
//

import SwiftUI

struct FruitDetailsView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    // MARK: Header View
                    FruitDetailsHeaderView(fruite: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // MARK: Title
                        Text(fruit.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                            .multilineTextAlignment(.leading)
                        
                        // MARK: Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: - Nutrients View
                        FruitNutrientsView(fruit: fruit)
                        
                        // MARK: Learn More
                        Text("Learn More about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // MARK: Description
                        Text(fruit.description)
                        
                        // MARK: - Hyperlink View
                        HyperLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData[0])
    }
}
