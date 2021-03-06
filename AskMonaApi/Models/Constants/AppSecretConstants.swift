//
//  AppSecretConstants.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/28.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct AppSecretConstants: Codable {
    let appId: String
    let appSecretKey: String

    enum CodingKeys: String, CodingKey {
        case appId = "app_id"
        case appSecretKey = "app_secret_key"
    }
}
