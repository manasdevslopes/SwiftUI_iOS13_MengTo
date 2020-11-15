//
//  UserStore.swift
//  DesignCode
//
//  Created by MANAS VIJAYWARGIYA on 02/08/20.
//  Copyright © 2020 MANAS VIJAYWARGIYA. All rights reserved.
//

import SwiftUI
import Combine

class UserStore: ObservableObject{
    @Published var isLogged: Bool = UserDefaults.standard.bool(forKey: "isLogged") {
        didSet {
            UserDefaults.standard.set(self.isLogged, forKey: "isLogged")
        }
    }
    @Published var showLogin = false
    
}
