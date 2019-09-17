//
//  BaseRequest.swift
//  Itcha
//
//  Created by Running Raccoon on 10/09/2019.
//  Copyright © 2019 Macbook. All rights reserved.
//

import Foundation
import ObjectMapper

open class BaseRequest: Mappable {
    
    open var appVer: String!
    open var appOs: String!
    open var userId: String = ""
    open var sessionId: String?
    
    internal init() {
        self.appVer = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        self.appOs = "iOS"
        self.userId = ""
        self.sessionId = ""
    }
    
    public required init?(map: Map) {
        appVer = try! map.value("appVer")
        appOs = try! map.value("appOs")
        userId = try! map.value("userId")
        sessionId = try! map.value("sessionId")
    }
    
    open func mapping(map: Map) {
        appVer <- map["appVer"]
        appOs <- map["appOs"]
        userId <- map["userId"]
        sessionId <- map["sessionId"]
    }
}

