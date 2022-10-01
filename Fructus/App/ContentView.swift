//
//  ContentView.swift
//  Fructus
//
//  Created by Soro on 2022-09-30.
//

import SwiftUI

struct ContentView: View {
    
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
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
