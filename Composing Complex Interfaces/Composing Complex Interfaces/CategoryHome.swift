//
//  ContentView.swift
//  Composing Complex Interfaces
//
//  Created by JSilver on 2019/06/07.
//  Copyright © 2019 JSilver. All rights reserved.
//

import SwiftUI

struct CategoryHome : View {
    var categories: [String: [Landmark]] {
        .init(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categories.keys.sorted().identified(by: \.self)) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                }
            }
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
