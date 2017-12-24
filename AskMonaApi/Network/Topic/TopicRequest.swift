//
//  TopicRequest.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/23.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import APIKit

public struct TopicRequestSetting: ApiRequestSetting {
    static let hostName: String = "http://askmona.org/v1"
    static var basePath: String = "/topics"
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

public protocol MultipleItemTopicRequest: TopicRequest where Response: Decodable {

}

// TODO: FIX pagination methods
public extension MultipleItemTopicRequest {
    public func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let dictionary = object as? [String: Any],
            let item = dictionary["topics"] as? [String: Any] else {
                throw ResponseError.unexpectedObject(object)
        }
        let jsonData = try JSONEncoder().encode(item)
        return try JSONDecoder().decode(Response.self, from: jsonData)
    }
}

//public protocol MultipleItemTopicRequest: TopicRequest {
//    // stub
//}
//
//public extension MultipleItemTopicRequest {
//    // stub
//}
