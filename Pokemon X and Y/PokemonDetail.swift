//
//  PokemonDetail.swift
//  Pokemon X and Y
//
//  Created by User13 on 2020/10/21.
//

import SwiftUI

struct PokemonDetail: View {
    let pokemon: Pokemon
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Image(pokemon.Name)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200)
                Text(pokemon.Description)
                    .font(.custom("jf-openhuninn-1.1", size: 20))
            }
            .navigationTitle(pokemon.Name)
        }
    }
}




struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PokemonDetail(pokemon: Pokemon(Name: "準神獸", Description: "黏美龍\n外貌\n身材高壯的黏美龍，其實個性非常溫馴。身體大部分為紫色調，十分光滑。有條巨大的尾巴，而在尾巴和脖子上有綠色斑圈。兩條觸角強而有力，可以攻擊或抓住敵人扔出去。全身都有黏液，手和下巴的黏液最集中、明顯。\n特殊能力\n黏美龍能夠用伸縮的角進行攻擊，威力相當於100名職業拳擊手出拳的力量。牠黏糊糊的皮膚下面有很厚的脂肪層，可以卸掉敵人的攻擊。\n性情\n黏美龍性情溫順，和人非常親近，會用被黏糊糊的黏液包裹著的身體抱住牠最喜歡的訓練家。沒人理睬的話，牠就會寂寞地流著黏糊糊的眼淚鳴叫。一旦被人戲弄牠，就會被牠用角狠狠戳，用粗粗的尾巴掃蕩。\n棲息地\n黏美龍棲息於氣候濕潤的沼澤濕地和熱帶雨林。\n"))
        }
    }
}
