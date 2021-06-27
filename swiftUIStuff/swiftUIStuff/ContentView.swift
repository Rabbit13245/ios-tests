//
//  ContentView.swift
//  swiftUIStuff
//
//  Created by Дмитрий Зайцев on 27.06.2021.
//

import SwiftUI

class TestObject: ObservableObject {
    @Published var count = 0
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: ItemsView(),
                label: {
                    Text("Click to navigate")
                })
        }
    }
}

struct ItemsView: View {
    @State private var count = 0
    @StateObject private var test = TestObject()
    
    var body: some View {
        VStack {
            Text("State count = \(count)")
            Button("State count += 1") {
                count += 1
            }
            Button("Reset state count") {
                count = .init(44)
            }
            Divider()
            Text("StateObject count = \(test.count)")
            Button("StateObject count += 1") {
                test.count += 1
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
