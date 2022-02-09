//
//  LazyHGrid2.swift
//  GridTraining
//
//  Created by oka yuuji on 2022/02/09.
//

import SwiftUI

struct LazyHGrid2: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top, spacing: 10) {
                ForEach(1...100, id: \.self) {
                    Text("Column \($0)")
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
