//
//  UserRequest.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/27.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import APIKit

public struct UserRequestSetting: ApiRequestSetting {
    static let hostName: String = "askmona.org/v1"
    static var basePath: String = "/users"
}

public protocol UserRequest: AskMonaRequest {
    var preParameters: [String: Any]? { get }
}

public extension UserRequest {
    var baseURL: URL {
        return URL(string: "http://\(UserRequestSetting.hostName)\(UserRequestSetting.basePath)")!
    }

    var parameters: Any? {
        let _parameters: [String: Any] = preParameters ?? [:]
        // add any common parameters (AS YOU LIKE)
        return _parameters
    }
}

public protocol SingleItemUserRequest: UserRequest where Response: Codable {

}

public extension SingleItemUserRequest {
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
