//
//  CircleImage.swift
//  Creating and Combining Views
//
//  Created by JSilver on 2019/06/06.
//  Copyright © 2019 JSilver. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarkData[0].image(forSize: 250))
    }
}
#endif
