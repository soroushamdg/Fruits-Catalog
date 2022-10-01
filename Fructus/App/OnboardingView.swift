//
//  OnboardingView.swift
//  Fructus
//
//  Created by Soro on 2022-09-30.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach(0..<5){_ in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
