//
//  Data.swift
//  TennisGuide
//
//  Created by Vladimir Saprykin on 17.07.16.
//  Copyright © 2016 Vladimir Saprykin. All rights reserved.
//

class Factor {
    var rivalName: String
    var rivalImage: String
    var params = [Param]()

    init(name: String, image: String) {
        self.rivalName = name
        self.rivalImage = image
    }
}

class Param {
    var name: String
    var params = [Param]()
    
    init(name: String) {
        self.name = name
    }
}
