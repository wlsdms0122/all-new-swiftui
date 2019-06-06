//
//  LandmarkList.swift
//  Building Lists and Navigation
//
//  Created by JSilver on 2019/06/06.
//  Copyright © 2019 JSilver. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        List(landmarkData) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
