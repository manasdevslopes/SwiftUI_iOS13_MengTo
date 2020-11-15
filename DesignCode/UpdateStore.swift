//
//  UpdateStore.swift
//  DesignCode
//
//  Created by MANAS VIJAYWARGIYA on 28/06/20.
//  Copyright © 2020 MANAS VIJAYWARGIYA. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
