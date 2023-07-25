//
//  SettingsView.swift
//  FructusDemo
//
//  Created by Pankaj Gupta on 28/06/23.
//

import SwiftUI
import UIKit

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboardingView") var isOnboardingView: Bool = false
    
    var settingsRows: [SettingsRowModel] = settingsRowData
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox {
                        HStack {
                            Text("Fructus".uppercased())
                                .fontWeight(.bold)
                            Spacer()
                            Image(systemName: "info.circle")
                        }
                        
                        Divider()
                        
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            
                            Spacer()
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                            
                        }
                    }
                    .padding()
                    
                    GroupBox {
                        HStack {
                            Text("Customization".uppercased())
                                .fontWeight(.bold)
                            Spacer()
                            Image(systemName: "paintbrush")
                        }
                        Divider().padding(.vertical, 4)
                        VStack {
                            Text("if you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboardingView) {
                                if isOnboardingView {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.secondary)
                                }
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                        }
                    }
                    .padding()
                    
                    GroupBox {
                        HStack {
                            Text("Application".uppercased())
                                .fontWeight(.bold)
                            Spacer()
                            Image(systemName: "iphone")
                        }
                        
                        ForEach(settingsRows) { item in
                            Divider()
                            SettingsRowView(settingRow: item)
                        }
                        
                        
                    }
                    .padding()
                    
                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
