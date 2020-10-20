//
//  Roleview.swift
//  Pokemon X and Y
//
//  Created by User18 on 2020/10/18.
//

import SwiftUI

struct Roleview: View {
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("主角群")){
                    Rolerow()
                }
                Section(header: Text("神奇寶貝")) {
                    ForEach(Table.indices) { item in
                        NavigationLink(destination:PokemonDetail(pokemon: Pokemons[item])){
                            PokemonRow(str: Table[item])
                        }
                    }
                }
            }
            .navigationTitle("角色介紹")
        }
    }
}

struct Roleview_Previews: PreviewProvider {
    static var previews: some View {
        Roleview()
    }
}
