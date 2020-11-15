//
//  PostList.swift
//  DesignCode
//
//  Created by MANAS VIJAYWARGIYA on 25/07/20.
//  Copyright © 2020 MANAS VIJAYWARGIYA. All rights reserved.
//

import SwiftUI

struct PostList: View {
    //@State var posts: [Post] = []
    @ObservedObject var store = DataStore()
    
    var body: some View {
        List(store.posts) {item in
            VStack(alignment: .leading, spacing: 8.0) {
                Text(item.title).font(.system(.title, design: .serif)).bold()
                Text(item.body).font(.subheadline).foregroundColor(.secondary)
            }
        }
//        .onAppear(){
//            Api().getPosts{(posts) in
//                self.posts = posts
//            }
//        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
