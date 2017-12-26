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
    let categoryType: TopicCategoryType
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
    let showingHostState: ShowingHostState

    enum CodingKeys: String, CodingKey {
        case rank
        case topicId = "t_id"
        case userId = "u_id"
        case state
        case title
        case categoryType = "cat_id"
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

public enum TopicCategoryType: Int, Codable {
    case etc = 0
    case baramaki
    case beginner
    case news
    case discussion
    case hobbyAndLife
    case creativeAndCulture
    case storyAndChat
    case economyAndSocial
    case scienceAndInformationTech
    case mining
    case r18

    var text: String {
        switch self {
        case .etc:
            return "その他"
        case .baramaki:
            return "ばらまき"
        case .beginner:
            return "初心者"
        case .news:
            return "ニュース"
        case .discussion:
            return "議論・討論"
        case .hobbyAndLife:
            return "趣味・生活"
        case .creativeAndCulture:
            return "創作・文化"
        case .storyAndChat:
            return "ネタ・雑談"
        case .economyAndSocial:
            return "経済・社会"
        case .scienceAndInformationTech:
            return "科学・IT"
        case .mining:
            return "採掘"
        case .r18:
            return "R18"
        }
    }
}
