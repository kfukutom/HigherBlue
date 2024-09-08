//
//  ContentView.swift
//  HigherBlue
//
//  Created by Kensuke Matthew Fukutomi on 2024/09/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Welcome to HigherBlue!").padding()
    }
}

struct MsgView: View {
    var body: some View {
        Text("Click on me!").padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MsgView_Previews: PreviewProvider {
    static var previews: some View {
        MsgView()
    }
}
