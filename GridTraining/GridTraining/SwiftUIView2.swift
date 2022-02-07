//
//  SwiftUIView2.swift
//  GridTraining
//
//  Created by oka yuuji on 2022/02/06.
//

import SwiftUI

struct SwiftUIView2: View {
let data = Array(1...100).map { "Index\($0)" }
let layout = [
    GridItem(.flexible(maximum: 80)),
    GridItem(.flexible(maximum: 100), spacing: 1),
    GridItem(.flexible(maximum: 150))
]
var body: some View {
    ScrollView {
        LazyVGrid(columns: layout, spacing: 0) {
            ForEach(data, id: \.self) { item in
                VStack {
                    Text("\(item)")
                      Rectangle()
                        .frame(height: 5)
                }
            }
        }
    }
}
}

struct SwiftUIView2_Previews: PreviewProvider {
static var previews: some View {
    SwiftUIView2()
}
}
