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
    GridItem(.flexible(maximum: 50)),
    GridItem(.flexible(maximum: 50)),
    GridItem(.flexible(maximum: 50)),
    GridItem(.flexible(maximum: 50))
]
var body: some View {
    ScrollView(.horizontal) {
        LazyHGrid(rows: layout, spacing: 10) {
            ForEach(data, id: \.self) { item in
                LazyVStack {
                    Text("\(item)")
                    Rectangle()
                        .frame(height: 5)
                }
                .frame(width: 100)
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
