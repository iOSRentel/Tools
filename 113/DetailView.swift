//
//  DetailView.swift
//  113
//
//  Created by Boris Zinovyev on 30.08.2021.
//

import SwiftUI

struct DetailView: View {
        
    var body: some View {
        VStack {
            Image("Samanba")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            Text("Samanba Team")
                .font(.title)
                .fontWeight(.medium)
            Form {
                Section {
                    HStack {
                        Text("Phone")
                        Spacer()
                        Text("+7925-111-22-33")
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        Text("https://samanba.run")
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("Address")
                        Spacer()
                        Text("Moscow")
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 180)
                    }
                }
                Section {
                    Button(action: {
                        print("Send a message")
                    }) {
                        Text("Send a message")
                    }
                    Button(action: {
                        print("Call")
                    }) {
                        Text("Call")
                    }
                }
            }
        }
        .environment(\.colorScheme, .dark)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
            DetailView()
    }
}
