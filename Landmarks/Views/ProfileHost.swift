//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Suraj Ramnani on 02/05/23.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20)
        {
            ProfileSummary(profile: draftProfile)
        }
    }
}
struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
