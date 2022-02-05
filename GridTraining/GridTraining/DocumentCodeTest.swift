//
//  DocumentCodeTest.swift
//  GridTraining
//
//  Created by oka yuuji on 2022/02/05.
//

import SwiftUI

struct DocumentCodeTest: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible(minimum: 10, maximum: 300)), count: 10)
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach((0...79), id: \.self) {
                    let codepoint = $0 + 0x1f600
                    //let codepointString = String(format: "%02X", codepoint)
                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                    HStack {
                        Spacer()
                    //Text("\(codepointString)")
                    Text("\(emoji)")
                        Spacer()
                    }
                }
            }.font(.system(size: 10))
        }
    }
}

struct DocumentCodeTest_Previews: PreviewProvider {
    static var previews: some View {
        DocumentCodeTest()
    }
}
