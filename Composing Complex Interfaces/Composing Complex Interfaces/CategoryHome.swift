//
//  ContentView.swift
//  Composing Complex Interfaces
//
//  Created by JSilver on 2019/06/07.
//  Copyright © 2019 JSilver. All rights reserved.
//

import SwiftUI

struct CategoryHome : View {
    var body: some View {
        NavigationView {
            Text("Landmarks Content")
                .navigationBarTitle(Text("Featured"))
        }
    }
}

#if DEBUG
struct CategoryHome_Previews : PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
#endif
