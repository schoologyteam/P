//
//  Linkview.swift
//  Pokemon X and Y
//
//  Created by User13 on 2020/10/21.
//

import SwiftUI

struct Linkview: View {
    var body: some View {
        Link(destination: URL(string: "https://tw.portal-pokemon.com/play/pokedex")!, label: {
                    VStack {
                        Text("台灣官方神奇寶貝圖鑒")
                            .font(.custom("jf-openhuninn-1.1", size: 30))
                            .padding()
                        Image("Link1")
                            .resizable()
                            .scaledToFit()
                            .padding().frame(width: 375)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 255/255, blue: 170/255), Color(red: 255/255, green: 211/255, blue: 6/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                            .cornerRadius(65)
                    }
        })
        .buttonStyle(PlainButtonStyle())
    }
}

struct Linkview_Previews: PreviewProvider {
    static var previews: some View {
        Linkview()
    }
}
