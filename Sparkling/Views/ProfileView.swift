//
//  ContentView.swift
//  Sparkling
//
//  Created by Maxim Vasilyev on 16.05.2024.
//

import SwiftUI
import SplineRuntime

struct ProfileView: View {
    var body: some View {
        VStack {
            // fetching from cloud
            let url = URL(string: "https://build.spline.design/3RirTk9gme0KzD9VUnDB/scene.splineswift")!

            // // fetching from local
            // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

            try? SplineView(sceneFileURL: url).ignoresSafeArea(.all)
            
//            Image("tmp-man-pic")
//                .resizable()
//                .background(.gray)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
