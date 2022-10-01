//
//  ContentView.swift
//  Fructus
//
//  Created by Soro on 2022-09-30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List(fruits.shuffled()) { fruit in
            
                NavigationLink(destination: FruitDetailView(fruit: fruit)){
                    FruitRowView(fruit: fruit)
                        .padding(.vertical,4)
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings=true
            }, label: {Image(systemName: "slider.horizontal.3")}))
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
        } 
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
