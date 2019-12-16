//
//  Colors.swift
//  ViewsJumpstart
//
//  Created by ramil on 16.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Colors: View {
    @State private var selection = 2
    var body: some View {
        VStack(spacing: 20) {
            Text("Segmented Control(Picker)").font(.largeTitle)
            Text("Colors")
                .font(.title).foregroundColor(.gray)
            Text("You can change the color of segmented controls by using the background modifier.")
            
            Text("When you add a color, notice the corners:")
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.yellow)
            .padding(.horizontal)
            
            Text("Adding a corner radius should handle it:")
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.yellow)
            .cornerRadius(8)
            .padding(.horizontal)
        }
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
    }
}