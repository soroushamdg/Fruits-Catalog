//
//  FruitCardView.swift
//  Fructus
//
//  Created by Soro on 2022-09-30.
//

import SwiftUI

struct FruitCardView: View {
    // MARK - PROPERTIES
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false;
    
    //MARK - BODY
    var body: some View {
        ZStack{
            VStack(spacing: 20) {
                Image(fruit.image).resizable().scaledToFit().shadow(color: Color(red: 0, green: 0, blue: 0), radius: 8,x: 6,y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 2,x: 2,y: 2)
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                    .multilineTextAlignment(.center)
                StartButtonView()
                    
            }

        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 9,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
        .padding(30)
        

    }
}

// MARK - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
