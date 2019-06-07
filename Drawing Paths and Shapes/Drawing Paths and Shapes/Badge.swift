//
//  Badge.swift
//  Drawing Paths and Shapes
//
//  Created by JSilver on 2019/06/07.
//  Copyright © 2019 JSilver. All rights reserved.
//

import SwiftUI

struct Badge : View {
    var body: some View {
        BadgeBackground()
    }
}

#if DEBUG
struct Badge_Previews : PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
#endif
