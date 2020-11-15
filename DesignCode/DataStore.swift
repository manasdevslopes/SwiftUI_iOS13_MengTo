//
//  DataStore.swift
//  DesignCode
//
//  Created by MANAS VIJAYWARGIYA on 25/07/20.
//  Copyright © 2020 MANAS VIJAYWARGIYA. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    init() {
        getPosts()
    }
    func getPosts() {
        Api().getPosts { (posts) in
            self.posts = posts
        }
    }
}
