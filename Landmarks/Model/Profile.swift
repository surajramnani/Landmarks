//
//  Profile.swift
//  Landmarks
//
//  Created by Suraj Ramnani on 02/05/23.
//

import Foundation

struct Profile
{
    var username: String
    var prefersNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "G_Kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String {rawValue}
        
    }
}
