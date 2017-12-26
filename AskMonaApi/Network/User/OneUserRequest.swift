//
//  OneUserRequest.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/27.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import APIKit

public struct OneUserRequest: SingleItemUserRequest {
    public typealias Response = Comments
    public let method: HTTPMethod = .get
    public let path: String = "/profile"

    public let preParameters: [String: Any]?

    public init(userId: Int) {
        var _preParameters = [String: Any]()
        _preParameters["u_id"] = userId
        preParameters = _preParameters
    }
}
