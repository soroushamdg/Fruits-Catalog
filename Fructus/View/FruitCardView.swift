//
//  FruitCardView.swift
//  Fructus
//
//  Created by Soro on 2022-09-30.
//

import SwiftUI

struct FruitCardView: View {
    // MARK - PROPERTIES
    
    @State private var isAnimating: Bool = false;
    
    //MARK - BODY
    var body: some View {
        ZStack{
            VStack(spacing: 20) {
                Image("blueberry").resizable().scaledToFit().shadow(color: Color(red: 0, green: 0, blue: 0), radius: 8,x: 6,y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 2,x: 2,y: 2)
                Text(" Some big text here ")
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
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
        .padding(30)
        

    }
}

// MARK - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
