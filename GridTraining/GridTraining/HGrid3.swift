//
//  HGrid3.swift
//  GridTraining
//
//  Created by oka yuuji on 2022/02/10.
//

import SwiftUI

struct HGrid3: View {
    let tags = ["アップル", "バナナ" ,"パイナップル","スイカ", "メロン" ,"キュウイ","ドリアン", "ドラゴンフルーツ" ,"マンゴー","ナシ", "オレンジ" ,"ライチ","レモン"]
    let data = Array(0...12)
    let layout = [GridItem(.adaptive(minimum: 60))]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem(.adaptive(minimum: 20))], spacing: 0) {
                ForEach(data, id: \.self) { index in
                    Text("\(tags[index])")
                }
            }
        }
    }
}

struct HGrid3_Previews: PreviewProvider {
    static var previews: some View {
        HGrid3()
    }
}
