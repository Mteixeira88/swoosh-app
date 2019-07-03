//
//  AppHomeView.swift
//  SocialAndChatWithFirebase
//
//  Created by Miguel Teixeira on 03/07/2019.
//  Copyright © 2019 Miguel Teixeira. All rights reserved.
//

import SwiftUI

struct AppHomeView : View {
    @State var moveToTab = Double(0)
    @Binding var signInSuccess: Bool
    
    var body: some View {
        return Group {
            if self.moveToTab == 0 {
                MessagesView(moveToTab: $moveToTab)
            } else if self.moveToTab == 1 {
                UsersView(moveToTab: $moveToTab)
            } else {
                ProfileView(moveToTab: $moveToTab, signInSuccess: $signInSuccess)
            }
        }
    }
}
