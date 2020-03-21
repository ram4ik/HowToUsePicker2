//
//  ContentView.swift
//  HowToUsePicker
//
//  Created by Ramill Ibragimov on 21.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    var body: some View {
        VStack {
            Picker(selection: $selection, label: Text("Pick ")) {
                ForEach(0..<days.count) { index in
                    Text(self.days[index]).tag(index)
                }
            }
            Text("Selected day: \(days[selection])")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
