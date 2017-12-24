//
//  TestError.swift
//  AskMonaApiTests
//
//  Created by msano on 2017/12/24.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

struct TestError: Error {
    let localizedDescription: String

    static func makeNotChangedError() -> TestError {
        return TestError(localizedDescription: "error not changed")
    }
}
