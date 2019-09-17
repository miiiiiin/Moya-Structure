//
//  HomeModel.swift
//  MoyaDemo
//
//  Created by Liu Yang on 2018/5/4.
//  Copyright © 2018年 Liu Yang. All rights reserved.
//

import Foundation
import ObjectMapper

//struct HomeModel: Codable {
//
//}

open class LoginEmailRequest: BaseRequest {
    
    var email: String!
    var pw: String!
    var regId: String!
    
    
    public init(email: String, pw: String, regId: String) {
        super.init()
        self.email = email
        self.pw = pw
        self.regId = regId
    }
    
    public required init?(map: Map) {
        super.init(map: map)
        guard let _ = map.JSON["email"] as? String else {
            assertionFailure("email is nil.")
            return nil
        }
        
        guard let _ = map.JSON["pw"] as? String else {
            assertionFailure("password is nil.")
            return nil
        }
        
        guard let _ = map.JSON["regId"] as? String else {
            assertionFailure("regId is nil.")
            return nil
        }
    }
    
    open override func mapping(map: Map) {
        email <- map["email"]
        pw <- map["pw"]
        regId <- map["regId"]
    }
    
    
}
