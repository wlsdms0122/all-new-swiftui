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
        List {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
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
