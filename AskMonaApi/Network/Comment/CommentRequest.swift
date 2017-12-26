//
//  CommentRequest.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/26.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import APIKit

public struct CommentRequestSetting: ApiRequestSetting {
    static let hostName: String = "askmona.org/v1"
    static let basePath: String = "/responses"
    // add unique id
}

public protocol CommentRequest: AskMonaRequest {
    var preParameters: [String: Any]? { get }
}

public extension CommentRequest {
    var baseURL: URL {
        return URL(string: "http://\(CommentRequestSetting.hostName)\(CommentRequestSetting.basePath)")!
    }

    var parameters: Any? {
        let _parameters: [String: Any] = preParameters ?? [:]
        // add any common parameters (AS YOU LIKE)
        return _parameters
    }
}

public protocol MultipleItemCommentRequest: CommentRequest where Response: Codable {

}

// TODO: FIX pagination methods
public extension MultipleItemCommentRequest {
    public func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let dictionary = object as? [String: Any],
            let status = dictionary["status"] as? Int else {
                throw ResponseError.unexpectedObject(object)
        }
        if status != 1 {
            throw ResponseError.unexpectedObject(object)
        }
        let jsonData = try JSONSerialization.data(withJSONObject: dictionary)
        return try JSONDecoder().decode(Response.self, from: jsonData)
    }
}
