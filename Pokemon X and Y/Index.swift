//
//  Index.swift
//  Pokemon X and Y
//
//  Created by User18 on 2020/10/18.
//

import SwiftUI

struct Index: View {
    @State private var rotateDegree: Double = 0
    var body: some View {
        VStack {
            Text("Pokemon: X and Y")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.custom("Chalkduster", size: 32))
                .offset(y: -10)
                .foregroundColor(.orange)
            TabView{
                ForEach(1..<5) { item in
                    Image("Index\(item)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 230, alignment: .center)
                        .clipped()
                }
            }.tabViewStyle(PageTabViewStyle()).frame(height: 230)
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            Button(action: {
                    self.rotateDegree = 360
                }){
                Image("frog")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200, alignment: .center)
                    .rotationEffect(.degrees(rotateDegree))
                    .animation(
                      Animation.linear(duration: 5)
                        .repeatForever(autoreverses: false)
                    )
            }.buttonStyle(PlainButtonStyle()).offset(y: 10)
            Spacer()
        }.offset(y: 150)
    }
}

struct Index_Previews: PreviewProvider {
    static var previews: some View {
        Index()
    }
}
