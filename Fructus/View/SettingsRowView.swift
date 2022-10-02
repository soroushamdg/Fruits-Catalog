//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Soro on 2022-10-01.
//

import SwiftUI

struct SettingsRowView: View {
    var title : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination:String? = nil
    
    var body: some View {
        Divider().padding(.vertical,4)

        HStack{
            Text(title).foregroundColor(.gray)
            Spacer()
            if((content) != nil){
                Text(content!)
            }
            if((linkLabel) != nil && (linkDestination) != nil){
                Link(linkLabel!, destination: URL(string: linkDestination!)!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.red)
            }
        }

    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(title: "Developer", content: "Soroush Bonab")
            .padding()
        
        SettingsRowView(title: "Link", linkLabel: "Website",linkDestination: "https://soroush.am")
            .padding()
    }
}
