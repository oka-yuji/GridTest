//
//  LazyHGrid2.swift
//  GridTraining
//
//  Created by oka yuuji on 2022/02/09.
//

import SwiftUI

struct LazyHGrid2: View {
    let data = Array(1...100).map { "Index\($0)" }
    let layout = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 100), spacing: 100),
        GridItem(.flexible(maximum: 150))
    ]
    var rows: [GridItem] =
    Array(repeating: .init(.fixed(20)), count: 2)
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, alignment: .top) {
                ForEach((0...79), id: \.self) {
                    let codepoint = $0 + 0x1f600
                    let codepointString = String(format: "%02X", codepoint)
                    Text("\(codepointString)")
                        .font(.footnote)
                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                    Text("\(emoji)")
                        .font(.largeTitle)
                }
            }
        }
    }
}

struct LazyHGrid2_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGrid2()
    }
}
