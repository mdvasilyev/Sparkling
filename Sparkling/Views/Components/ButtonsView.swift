//
//  ButtonsView.swift
//  Sparkling
//
//  Created by Maxim Vasilyev on 17.05.2024.
//

import SwiftUI

//struct UpperButton: ButtonStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        configuration.label
//            .font(.system(size: 25, weight: .light))
//            .frame(width: 25, height: 25)
//            .foregroundColor(.black)
//    }
//}

struct UpperButton: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var image: Image
    
    var body: some View {
        image
            .font(.title)
            .frame(width: 24,height: 24)
            .foregroundColor(colorScheme == .dark ? .white : .black)
    }
}

struct FooterButton: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var image: Image
    var text: String
    var isActive: Bool
    
    var body: some View {
        HStack {
//            GeometryReader { geo in
                VStack(spacing: 3) {
//                    Rectangle()
//                        .frame(height: 10)
                    
                    image
                        .font(.title)
                        .frame(width: 24,height: 24)
                        .foregroundColor(isActive ? .orange : (colorScheme == .dark ? .white : .black))

                    Text(text)
                        .font(.caption)
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                }
//            }
        }
    }
}



//struct FooterButton: ButtonStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        configuration.label
//            .font(.system(size: 20, weight: .light))
//            .frame(width: 100, height: 25)
//            .foregroundColor(.black)
//    }
//}
