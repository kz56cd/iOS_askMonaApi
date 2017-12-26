//
//  Comment.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/26.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct Comment: Codable {
    let commentId: Int
    let state: CommentState
    let created: Int
    let userId: Int
    let userName: String
    let userDan: String
    let userCommentTimes: String
    let receivedMonas: String
    let receivedMonasLevel: Int
    let receivedMonasUsersCount: Int
    let host: String?
    let content: String

    enum CodingKeys: String, CodingKey {
        case commentId = "r_id"
        case state
        case created
        case userId = "u_id"
        case userName = "u_name"
        case userDan = "u_dan"
        case userCommentTimes = "u_times"
        case receivedMonas = "receive"
        case receivedMonasLevel = "res_lv"
        case receivedMonasUsersCount = "rec_count"
        case host
        case content = "response"
    }
}

public enum CommentState: Int, Codable {
    case canDisplay = 1
    case canSendMonas = 2
    case unknown = 255 // TODO: check detail
}
