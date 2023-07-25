//
//  FruitsListView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 23/06/23.
//

import SwiftUI

struct FruitsListView: View {
    
    var listItems: [Fruit] = fruitsData
    @State private var isSettingPresented: Bool = false
    
    var body: some View {
        NavigationView {
            List(listItems.shuffled()) { item in
                NavigationLink {
                    FruitDetailsView(fruit: item)
                } label: {
                    FruitItemView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isSettingPresented = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
            }
            .sheet(isPresented: $isSettingPresented) {
                SettingsView()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitsListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView()
    }
}
