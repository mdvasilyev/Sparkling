//
//  AimsView.swift
//  Sparkling
//
//  Created by Maxim Vasilyev on 17.05.2024.
//

import SwiftUI

struct AimsView: View {
    
    var sports: [Sport] = [.init(name: "Swimming", imageName: "figure.pool.swim"),
                           .init(name: "Soccer", imageName: "figure.soccer")
    ]
    
    var skills: [Skill] = [.init(field: "Programming", imageName: "laptopcomputer"),
                           .init(field: "Oratory", imageName: "megaphone")
    ]
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Sports") {
                    ForEach(sports, id: \.name) { sport in
                        NavigationLink(value: sport) {
                            Label(sport.name, systemImage: sport.imageName)
                        }
                    }
                }
                
                Section("Skills") {
                    ForEach(skills, id: \.field) { skill in
                        NavigationLink(value: skill) {
                            Label(skill.field, systemImage: skill.imageName)
                        }
                    }
                }
            }
            .navigationTitle("Aims")
            .navigationDestination(for: Sport.self) { sport in
                Text("Page for \(sport.name)!")
            }
            .navigationDestination(for: Skill.self) { skill in
                Text("Page for \(skill.field)!")
            }
        }
    }
}

struct Sport: Hashable {
    let name: String
    let imageName: String
}

struct Skill: Hashable {
    let field: String
    let imageName: String
}

struct AimsView_Preview: PreviewProvider {
    static var previews: some View {
        AimsView()
    }
}
