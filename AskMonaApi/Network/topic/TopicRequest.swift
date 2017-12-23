//
//  TopicRequest.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/23.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct TopicRequestSetting: ApiRequestSetting {
    static let hostName: String = ""
    static var basePath: String = ""
    // add unique id
}

public protocol TopicRequest: AskMonaRequest {
    // stub
}

public extension TopicRequest {
    var baseURL: URL {
        return URL(string: "http://\(TopicRequestSetting.hostName)\(TopicRequestSetting.basePath)")!
    }

//    public func intercept(object: Any, urlResponse: HTTPURLResponse) throws -> Any {
//        // stub
//    }

    var parameters: Any? {
        var _parameters: [String: Any] = [:]
        // add any parameter (as you like)
        return _parameters
    }
}

public protocol SingleItemTopicRequest: TopicRequest {
    associatedtype Response: Codable
}

public extension SingleItemTopicRequest {
//    public func response(from object: Any, urlResponse: HTTPURLResponse) throws -> SingleItemTopicRequest.Response {
//        guard let dictionary = object as? [String: Any],
//            let item = dictionary["topics"] as? [String: Any] else {
//                throw Error // FIXME:
//        }
//        return try Codable(from: item)
//    }
}

//public protocol MultipleItemTopicRequest: TopicRequest {
//    // stub
//}
//
//public extension MultipleItemTopicRequest {
//    // stub
//}
