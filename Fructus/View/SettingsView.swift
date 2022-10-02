//
//  SettingsView.swift
//  Fructus
//
//  Created by Soro on 2022-10-01.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView(){
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle"),
                             content: {
                        Divider().padding(.vertical,4)
                        HStack(alignment:.center,spacing:10,content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        })
                        
                    })
                    GroupBox(label: SettingsLabelView(labelText: "RESTART", labelImage: "paintbrush"), content: {
                        Divider().padding(.vertical,4)
                        Text("if you wish, you can restart the application by toggle the switch in this box. the way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding, label: {Text("Restart".uppercased())})
                            .padding()
                            .background(Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous)))
                        
                    })
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                        VStack{
                            SettingsRowView(title: "Developer", content: "Soroush Bonab")
                            SettingsRowView(title: "Website", linkLabel: "soroush.am",linkDestination: "https://soroush.am")
                            
                        }

                    })
                    
                }
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
            }
            .padding()

        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
