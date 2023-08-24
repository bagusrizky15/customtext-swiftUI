//
//  ContentView.swift
//  Hello
//
//  Created by BBPDEV on 24/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Link("Go to Apple", destination: URL(string: "https://apple.com")!)
                .buttonStyle(.borderless)
            Link("Call me", destination: URL(string: "tel:08813112407")!)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.regular)
            Link("Send Email", destination: URL(string: "mailto:mohamad_rizky@bca.co.id")!)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                .tint(.pink)
            Link(destination: URL(string: "apple.com")!){
                HStack(spacing:16){
                    Image(systemName: "apple.logo")
                    Text("Apple Store")
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(
                Capsule()
                    .fill(Color.blue)
                )
            }
            Text("IOS")
                .font(.system(size: 54))
                .fontWeight(.black)
                .foregroundStyle(
                LinearGradient(
                    colors: [.pink, .purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing
                )
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
