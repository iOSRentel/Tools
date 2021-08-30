//
//  SwiftUIView.swift
//  113
//
//  Created by Boris Zinovyev on 29.08.2021.
//

import SwiftUI

        //MARK: - Tools
struct ToolsView: View {
        //MARK: - PROPERTIES

    
    var body: some View {
        
        // MARK: - VStack я просто оставил его здесь, не добавил в навигейшен
        VStack(alignment: .center, spacing: 0) {
            
        // MARK: - FORM
            Form {
                
                Section(header: Text("Profile")){
                    ProfileView()
                }
                .padding(.vertical, 3)

                Section(header: Text("Follow us on social media")) {
                    FormRowLinkView(icon: "globe", color: Color.pink, text: "Website", link: "https://rentel.me/")
                    FormRowLinkView(icon: "textformat.abc.dottedunderline", color: Color.blue, text: "Twitter", link: "https://twitter.com/RentelMe/")
                    FormRowLinkView(icon: "link", color: Color.purple, text: "Instagram", link: "https://www.instagram.com/rentel.me/")
                }
                .padding(.vertical, 3)
                
                
                Section(header: Text("About the application")) {
                    FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Rentel POS")
                    FormRowStaticView(icon: "checkmark.seal", firstText: "Compatibility", secondText: "iOS, iPadOS")
                    FormRowStaticView(icon: "dot.radiowaves.right", firstText: "Connectivity", secondText: "NFC Reader")
                    FormRowStaticView(icon: "keyboard", firstText: "Developer", secondText: "Boris Zinovyev")
                    FormRowStaticView(icon: "flag", firstText: "App Version", secondText: "1.0.0")
        }
                .padding(.vertical, 3)
    }
                .listStyle(GroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)

        //: FORM
        // MARK: - Footer
            Text("Copyright © All rights reserved.\nRENTEL LLC 2021")
                .multilineTextAlignment(.center)
                .font(.footnote)
                .padding(.top, 6)
                .padding(.bottom, 8)
                .foregroundColor(Color.secondary)
        }
                .navigationBarTitle(Text("Tools"))
                .background(Color("ColorBackground").edgesIgnoringSafeArea(.all))
    }
}


//MARK: - Orders
struct OrdersView: View {
    var body: some View {
            Text("Search")
                .navigationBarTitle(Text("Orders"))
        }
    }
//MARK: - POS
struct POSView: View {
    var body: some View {
            
            Text("Search")
                .navigationBarTitle(Text("Point Of Sale"))
        }
    }
//MARK: -
struct ContentView: View {
    var body: some View {
        NavigationView{
            ToolsView()
            OrdersView()
            POSView()
        }
    }
}
