//
//  Rolerow.swift
//  Pokemon X and Y
//
//  Created by User13 on 2020/10/21.
//

import SwiftUI

struct Rolerow: View {
    var body: some View {
        ScrollView(.horizontal){
            let rows = [GridItem()]
            LazyHGrid(rows: rows){
                ForEach(Roles.indices){ (index) in
                    NavigationLink(destination:RoleDetail(role: Roles[index])) {
                        VStack {
                            Image(Roles[index].Name)
                               .resizable()
                               .scaledToFill()
                                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 200)
                               .clipped()
                            Text(Roles[index].Name).font(.custom("jf-openhuninn-1.1", size: 20))
                       }
                    }
                }
            }
        }
    }
}

struct Rolerow_Previews: PreviewProvider {
    static var previews: some View {
        Rolerow().previewLayout(.fixed(width: 400, height: 200
        ))
    }
}
