//
//  AskMonaApiError.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/18.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import APIKit

public enum AskMonaApiError: Error {
    case connectionError(Error)
    case requestError(Error)
    case responseError(Error)

    init(apiKitError: SessionTaskError) {
        switch apiKitError {
        case let .connectionError(error):
            self = .connectionError(error)
        case let .requestError(error):
            self = .requestError(error)
        case let .responseError(error):
            // TODO: ドメイン固有のエラーはこちらで処理させる
            self = .responseError(error)
        }
    }
}
