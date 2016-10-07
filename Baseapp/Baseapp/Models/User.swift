//
// Created by James Coggan on 07/10/2016.
// Copyright (c) 2016 James Coggan. All rights reserved.
//

import Foundation
import ObjectMapper

class User: Mappable {
    var login: String?
    var id: String?
    var avatarUrl: String?
    var name: String?
    var company: String?

    required init?(map: Map) {

    }

    func mapping(map: Map) {
        login <- map["login"]
        id <- map["id"]
        avatarUrl <- map["avatar_url"]
        name <- map["name"]
        company <- map["company"]
    }
}
