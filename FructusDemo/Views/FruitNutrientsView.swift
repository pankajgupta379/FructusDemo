//
//  FruitNutrientsView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 25/06/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    
    var body: some View {
        GroupBox {
            DisclosureGroup(content: {
                ForEach(fruit.nutrition) { item in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(item.name)
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.body.bold())
                        
                        Spacer(minLength: 30)
                        
                        Text(item.value)
                            .multilineTextAlignment(.trailing)
                    }
                }
            }, label: {
                Text("Nutrient value per 100g")
            })
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .frame(width: 280, height: 440)
    }
}
