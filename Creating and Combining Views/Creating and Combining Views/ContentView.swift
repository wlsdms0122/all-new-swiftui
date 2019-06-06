//
//  ContentView.swift
//  Creating and Combining Views
//
//  Created by JSilver on 2019/06/06.
//  Copyright © 2019 JSilver. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Turtle Rock")
            .font(.title)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
