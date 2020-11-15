//
//  TabBar.swift
//  DesignCode
//
//  Created by MANAS VIJAYWARGIYA on 28/06/20.
//  Copyright © 2020 MANAS VIJAYWARGIYA. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "play.circle")
                Text("Home")
            }
            ContentView().tabItem {
                Image(systemName: "rectangle.stack")
                Text("Certificates")
            }
            CourseList().tabItem {
                Image(systemName: "book")
                Text("Courses")
            }
            PostList().tabItem {
                Image(systemName: "bell")
                Text("Post")
            }
            Buttons().tabItem {
                Image(systemName: "person.crop.circle")
                Text("Neumorphic")
            }
        }
        .background(BlurView(style: .systemThinMaterial))
        //.edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            //TabBar().previewDevice("iPhone 8")
            TabBar().previewDevice("iPhone 11")
            .environmentObject(UserStore())
        }
    }
}
