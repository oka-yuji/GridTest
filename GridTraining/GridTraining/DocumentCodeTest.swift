//
//  DocumentCodeTest.swift
//  GridTraining
//
//  Created by oka yuuji on 2022/02/05.
//

import SwiftUI

struct DocumentCodeTest: View {
    let data = Array(1...1000)
    let layout = [GridItem(.adaptive(minimum: 50))]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
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

struct DocumentCodeTest_Previews: PreviewProvider {
    static var previews: some View {
        DocumentCodeTest()
    }
}
