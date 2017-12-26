//
//  TopicListRequest.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/24.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import APIKit

public struct TopicListRequest: MultipleItemTopicRequest {
    public typealias Response = Topics
    public let method: HTTPMethod = .get
    public let path: String = "/list"

    public let preParameters: [String: Any]?

    public init(
        categoryId: Int? = nil,
        tag: String? = nil,
        safeMode: Int? = nil,
        order: TopicListOrder?  = nil,
        limit: Int? = nil,
        offset: Int? = nil
    ) {
        var _preParameters = [String: Any]()
        _preParameters["cat_id"] = categoryId
        _preParameters["tag"] = tag
        _preParameters["safe"] = safeMode
        _preParameters["order"] = order
        _preParameters["limit"] = limit
        _preParameters["offset"] = offset
        preParameters = _preParameters
    }
}

public enum TopicListOrder: String {
    case updated = "updated"
    case created = "created"
    case favorites = "favorites"
    case received = "receive"
}
