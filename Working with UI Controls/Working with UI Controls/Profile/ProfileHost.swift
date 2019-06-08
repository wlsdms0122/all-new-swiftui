//
//  PRofileHost.swift
//  Working with UI Controls
//
//  Created by JSilver on 2019/06/09.
//  Copyright © 2019 JSilver. All rights reserved.
//

import SwiftUI

struct ProfileHost : View {
    @Environment(\.editMode) var mode
    @State var profile = Profile.default
    @State var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                
                EditButton()
            }
            if self.mode?.value == .inactive {
                ProfileSummary(profile: profile)
            } else {
                Text("Profile Editor")
            }
        }
        .padding()
    }
}

#if DEBUG
struct ProfileHost_Previews : PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
#endif
