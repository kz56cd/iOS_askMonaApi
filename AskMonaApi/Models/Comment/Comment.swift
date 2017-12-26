//
//  Comment.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/26.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct Comment: Codable {
    let created: Int
    // WIP
    
    enum CodingKeys: String, CodingKey {
        case created
    }
}
