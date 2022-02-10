//
//  DocumentCodeTest.swift
//  GridTraining
//
//  Created by oka yuuji on 2022/02/05.
//

import SwiftUI

struct DocumentCodeTest: View {
    let tags = ["アップル", "バナナ" ,"パイナップル","スイカ", "メロン" ,"キュウイ","ドリアン", "ドラゴンフルーツ" ,"マンゴー","ナシ", "オレンジ" ,"ライチ","レモン"]
    let data = Array(0...12)
    let layout = [GridItem(.adaptive(minimum: 60))]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 10, maximum: .infinity))], spacing: 10) {
                ForEach((0...12), id: \.self) { index in
                    Text("\(tags[index])")
                }
            }
        }
    }
}

struct DocumentCodeTest_Previews: PreviewProvider {
    static var previews: some View {
        DocumentCodeTest()
    }
}
