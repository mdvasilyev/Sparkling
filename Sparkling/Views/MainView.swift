//
//  MainView.swift
//  Sparkling
//
//  Created by Maxim Vasilyev on 17.05.2024.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedTab: FooterTab = .profile
    
    var body: some View {
        ZStack {
            VStack {
                
                switch selectedTab {
                case .profile:
                    ProfileView()
                case .aims:
                    AimsView()
                case .community:
                    CommunityView()
                }
            }
            
            UpperView()
            
            FooterView(selectedTab: $selectedTab)
        }
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
