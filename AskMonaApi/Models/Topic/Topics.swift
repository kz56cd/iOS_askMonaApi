//
//  Topics.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/24.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct Topics: Codable {
    let status: Int
    let count: Int
    let list: [Topic]

    enum CodingKeys: String, CodingKey {
        case status
        case count
        case list = "topics"
    }
}

public struct Topic: Codable {
    let rank: Int
    let topicId: Int
    let userId: Int
    let state: Int
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
    let isEditable: Int // TODO: Mod Bool
    let isShowHost: Int // TODO: Mod Enum > 投稿した人のホスト情報を表示するかどうか。0は非表示。1はID表示。2はID＋プロバイダ名表示を意味します。

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
        case isShowHost = "sh_host"
    }
}
