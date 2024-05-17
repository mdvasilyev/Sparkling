//
//  UpperView.swift
//  Sparkling
//
//  Created by Maxim Vasilyev on 17.05.2024.
//

import SwiftUI

struct UpperView: View {
    var body: some View {
        VStack {
            HStack(spacing: 30) {
                Spacer()
                
                Button {
//                    selectedTab = .profile
                } label: {
                    UpperButton(image: Image(systemName: "lightbulb.max"))
                }
                
                Button {
//                    selectedTab = .profile
                } label: {
                    UpperButton(image: Image(systemName: "gearshape"))
                }
            }
            .padding(.vertical, 50)
            .padding(.horizontal, 30)
            
            Spacer()
        }
    }
}

struct UpperView_Previews: PreviewProvider {
    static var previews: some View {
        UpperView()
    }
}
