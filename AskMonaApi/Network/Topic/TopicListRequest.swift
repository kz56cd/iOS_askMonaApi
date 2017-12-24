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
    public let path: String = "/list" // NOTE:

    public init() {
        // NOTE: no parameter
    }
}
