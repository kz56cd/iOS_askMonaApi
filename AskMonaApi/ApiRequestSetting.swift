//
//  ApiRequestSetting.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/18.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import APIKit

protocol ApiRequestSetting {
    static var hostName: String { get }
    static var basePath: String { get }
}
