//
//  MallAPI.swift
//  MoyaDemo
//
//  Created by Liu Yang on 2018/5/4.
//  Copyright © 2018年 Liu Yang. All rights reserved.
//

import Foundation
import Moya

enum MallAPI {
//    case getMallHome
    case loginEmail(email: String, pw: String, regId: String)
    case getGoodsList
    
}

extension MallAPI: TargetType, MoyaAddable {
    var path: String {
        switch self {
//            case .getMallHome:
//                return "/user/loginEmail"
            case .loginEmail: return "/user/loginEmail"
            case .getGoodsList:
                return "goods list path"
        }
    }
    
    var method: Moya.Method {
        switch self {
            case .loginEmail(_, _, _): return .post
            default:
                return .get
        }
    }
    
    var task: Task {
        var parameters: [String: Any] = [:]
        switch self {
//            case .getMallHome:
//                parameters = [:]
            case .getGoodsList:
                ()
            case .loginEmail(let email, let pw, let regId):
                parameters = [:]
            
        }
        return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
    }
    
    var cacheKey: String? {
        switch self {
            case .getGoodsList:
                return "mall home cache key"
            default:
                return nil
        }
    }
    
    var isShowHud: Bool {
        switch self {
            case .getGoodsList:
                return true
            default:
                return false
        }
    }
}
