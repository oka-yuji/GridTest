//
//  ContentView.swift
//  GridTraining
//
//  Created by oka yuuji on 2022/02/05.
//

import SwiftUI

struct ContentView: View {
    var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4)
    var items = Array(1...1000).map { int in "Item\(int)" }
    var items2 = Array(1...1000).map { "Item\($0)" }
    let layout = [GridItem(.adaptive(minimum: 10, maximum: 100))]
    var body: some View {
        LazyHGridView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
