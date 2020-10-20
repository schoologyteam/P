//
//  ContentView.swift
//  Pokemon X and Y
//
//  Created by User18 on 2020/10/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Index().tabItem {
                Image(systemName: "house.fill")
                Text("Index")
            }
            Roleview().tabItem {
                Image(systemName: "person.circle.fill")
                Text("Role")
            }
            Linkview().tabItem {
                Image(systemName: "link")
                Text("Link")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
