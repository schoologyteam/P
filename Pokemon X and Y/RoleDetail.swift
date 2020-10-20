//
//  RoleDetail.swift
//  Pokemon X and Y
//
//  Created by User13 on 2020/10/21.
//

import SwiftUI

struct RoleDetail: View {
    let role: Role
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Image(role.Name)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200)
                Text(role.Description)
                    .font(.custom("jf-openhuninn-1.1", size: 20)).offset(y:30)
            }
            .navigationTitle(role.Name)
        }
    }
}

struct RoleDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RoleDetail(role: Role(Name: "小智", Description: "《精靈寶可夢》動畫全系列主角\n年齡10歲，出身於真新鎮，是個朝氣蓬勃、熱愛寶可夢的少年。\n以寶可夢大師為目標持續旅行的他，雖然技術還不是很成熟，但是隨著經驗增加而逐漸進步。\n造型範本為GB紅、綠版的男主角，名字是以原案企劃者田尻智來命名"))
        }
    }
}
