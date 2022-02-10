//
//  HGrid3.swift
//  GridTraining
//
//  Created by oka yuuji on 2022/02/10.
//

import SwiftUI

struct HGrid3: View {
    let layout = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 100)),
        GridItem(.flexible(maximum: 150))
    ]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 10) {
                ForEach(1...100, id: \.self) {
                    Text("row \($0)")
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
