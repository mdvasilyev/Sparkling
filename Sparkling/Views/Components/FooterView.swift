//
//  FooterView.swift
//  Sparkling
//
//  Created by Maxim Vasilyev on 16.05.2024.
//

import SwiftUI

enum FooterTab: Int {
    case profile = 0
    case aims = 1
    case community = 2
}

struct FooterView: View {
    
    @Environment(\.safeAreaInsets) var safeAreaInsets
    @Environment(\.colorScheme) var colorScheme
    @Binding var selectedTab: FooterTab
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Button {
                    selectedTab = .profile
                } label: {
                    FooterButton(image: Image(systemName: "person"), text: "Profile", isActive: selectedTab == .profile)
                }
                
                Spacer()
                
                Button {
                    selectedTab = .aims
                } label: {
                    FooterButton(image: Image(systemName: "target"), text: "Aims", isActive: selectedTab == .aims)
                }
                
                Spacer()
                
                Button {
                    selectedTab = .community
                } label: {
                    FooterButton(image: Image(systemName: "person.3"), text: "Community", isActive: selectedTab == .community)
                }
            }
            .frame(height: 75)
            .padding(.horizontal, 30)
            .background(Color(.gray))
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView(selectedTab: .constant(.profile))
    }
}



//struct FooterView: View {
//    var body: some View {
//        ZStack {
//            Rectangle()
//                .foregroundColor(.clear)
//                .frame(height: 75)
//                .frame(maxWidth: .infinity)
//                .background(.gray)
//                .opacity(0.1)
//
//            HStack {
//                Spacer()
//
//                NavigationLink(destination: ProfileView()) {
//                    VStack {
//                        Image(systemName: "person")
//                            .font(.title)
//                        Text("Profile")
//                            .font(.callout)
//                    }
//                }
//                .buttonStyle(FooterButton())
//
//                Spacer()
//
//                NavigationLink(destination: AimsView()) {
//                    VStack {
//                        Image(systemName: "target")
//                            .font(.title)
//                        Text("Aims")
//                            .font(.callout)
//                    }
//                }
//                .buttonStyle(FooterButton())
//
//                Spacer()
//
//                NavigationLink(destination: CommunityView()) {
//                    VStack {
//                        Image(systemName: "person.3")
//                            .font(.title)
//                        Text("Community")
//                            .font(.callout)
//                    }
//                }
//                .buttonStyle(FooterButton())
//
//                Spacer()
//            }
//            .padding()
//        }
//    }
//}
