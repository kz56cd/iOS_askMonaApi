//
//  CommentListRequest.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/26.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import APIKit

public struct CommentListRequest: MultipleItemCommentRequest {
    public typealias Response = Comments
    public let method: HTTPMethod = .get
    public let path: String = "/list"

    public let preParameters: [String: Any]?

    public init(
        topicId: Int,
        from: String? = nil,
        to: Int? = nil, // swiftlint:disable:this identifier_name
        isGetTopicDetail: Bool?  = nil,
        ifModifiedSince: Int? = nil // TODO: 命名変更
        ) {
        var _preParameters = [String: Any]()
        _preParameters["t_id"] = topicId
        _preParameters["from"] = from
        _preParameters["to"] = to
        if let isGetTopicDetail = isGetTopicDetail {
            _preParameters["topic_detail"] = isGetTopicDetail ? 1 : 0
        }
        _preParameters["if_modified_since"] = topicId
        preParameters = _preParameters
    }
}
