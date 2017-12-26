//
//  Topic.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/25.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct Topic: Codable {
    let rank: Int
    let topicId: Int
    let userId: Int
    let state: TopicState
    let title: String
    let categoryId: Int
    let category: String
    let tags: String?
    let leadString: String
    let psString: String?
    let created: Int
    let updated: Int
    let modified: Int
    let resCount: Int
    let receivedMonas: String // MEMO: やり取りされたMONA（watanabe単位　1MONAは100,000,000watanabeです）。
    let favorites: Int
    let isEditable: TopicStateForAnonymous
    let showingHostState: ShowingHostState // TODO: Mod Enum > 投稿した人のホスト情報を表示するかどうか。0は非表示。1はID表示。2はID＋プロバイダ名表示を意味します。

    enum CodingKeys: String, CodingKey {
        case rank
        case topicId = "t_id"
        case userId = "u_id"
        case state
        case title
        case categoryId = "cat_id"
        case category
        case tags
        case leadString = "lead"
        case psString = "ps"
        case created
        case updated
        case modified
        case resCount = "count"
        case receivedMonas = "receive"
        case favorites
        case isEditable = "editable"
        case showingHostState = "sh_host"
    }
}

public enum TopicState: Int, Codable {
    case canDisplay = 1
    case canSendMonas = 2
    case canEdit = 4
    case canComment = 8
    case unknown = 255 // TODO: check detail
}

public enum TopicStateForAnonymous: Int, Codable {
    case cannotEdit = 0
    case canEdit
}

public enum ShowingHostState: Int, Codable {
    case cannotShow = 0
    case canShowId
    case canShowIdAndProviderName
}
