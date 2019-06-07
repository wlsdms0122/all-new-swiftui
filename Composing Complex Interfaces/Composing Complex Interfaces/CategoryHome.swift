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
    
    var featured: [Landmark] {
        landmarkData.filter { $0.isFeatured }
    }
    
    var body: some View {
        NavigationView {
            List {
                FeaturedLandmarks(landmarks: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(categories.keys.sorted().identified(by: \.self)) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle(Text("Featured"))
        }
    }
}

struct FeaturedLandmarks: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarks[0].image(forSize: 250).resizable()
    }
}

#if DEBUG
struct CategoryHome_Previews : PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
#endif