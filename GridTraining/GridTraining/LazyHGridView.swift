//
//  LazyHGridView.swift
//  GridTraining
//
//  Created by oka yuuji on 2022/02/07.
//

import SwiftUI

struct LazyHGridView: View {
    let data = Array(1...100).map { "Index\($0)" }
    let layout = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 100), spacing: 100),
        GridItem(.flexible(maximum: 150))
    ]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 5) {
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

struct LazyHGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridView()
    }
}
