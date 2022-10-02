//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Soro on 2022-09-30.
//

import SwiftUI

 struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                FruitHeaderView(fruit: fruit)
                VStack(alignment: .center, spacing: 20){
                    VStack(alignment: .leading, spacing: 20){
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                        
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        SourceLinkView()
                            
                    }
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                }
            }
            .navigationBarTitle(fruit.title, displayMode: .automatic)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(.stack)
    }
         
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
