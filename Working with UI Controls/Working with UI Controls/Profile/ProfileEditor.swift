//
//  ProfileEditor.swift
//  Working with UI Controls
//
//  Created by JSilver on 2019/06/09.
//  Copyright © 2019 JSilver. All rights reserved.
//

import SwiftUI

struct ProfileEditor : View {
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField($profile.username)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Seasonal Photo").bold()
                
                SegmentedControl(selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases.identified(by: \.self)) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
            }
            .padding(.top)
        }
    }
}

#if DEBUG
struct ProfileEditor_Previews : PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
#endif
