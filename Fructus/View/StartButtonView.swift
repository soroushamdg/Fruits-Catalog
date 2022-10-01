//
//  SwiftUIView.swift
//  Fructus
//
//  Created by Soro on 2022-09-30.
//

import SwiftUI

struct StartButtonView: View {
    // MARK - PROPERTIES
    
    // MARK - BODY
    var body: some View {
        Button {
            print("Exit the onboarding")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(Capsule().strokeBorder(Color.white,lineWidth: 1.25))
        }
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
