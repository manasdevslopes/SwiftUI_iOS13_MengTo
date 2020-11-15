//
//  CourseStore.swift
//  DesignCode
//
//  Created by MANAS VIJAYWARGIYA on 25/07/20.
//  Copyright © 2020 MANAS VIJAYWARGIYA. All rights reserved.
//

import SwiftUI
import Contentful
import Combine

let client = Client(spaceId: "2ei0v46lb0r1", accessToken: "QYhwNu7rD4ZMEQr7K57FJCepliBJvByt-6MJmtT0OcA")

func getArray(id: String, completion: @escaping([Entry]) -> ()) {
    let query = Query.where(contentTypeId: id)
    client.fetchArray(of:Entry.self, matching: query){result in
        //print(result)
        switch result {
            case .success(let array):
                DispatchQueue.main.async {
                    completion(array.items)
                }
            case .failure(let error):
                print(error)
        }
    }
}

class CourseStore: ObservableObject {
    @Published var courses: [Course] = courseData
    
    init() {
        getArray(id: "course") { (items) in
            items.forEach { (item) in
                self.courses.append(Course(
                    title: item.fields["title"] as! String,
                    subtitle: item.fields["subtitle"] as! String,
                    image: #imageLiteral(resourceName: "Card4"),
                    logo: #imageLiteral(resourceName: "Logo1"),
                    color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1),
                    show: false))
            }
        }
    }
}
