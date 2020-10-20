//
//  PokemonRow.swift
//  Pokemon X and Y
//
//  Created by User13 on 2020/10/21.
//

import SwiftUI

struct PokemonRow: View {
    let str : String
    var body: some View {
        HStack {
            VStack {
                Text(str).font(.custom("jf-openhuninn-1.1", size: 30))
            }
            Spacer()
            
        }
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRow(str: "御三家").previewLayout(.sizeThatFits)
    }
}
