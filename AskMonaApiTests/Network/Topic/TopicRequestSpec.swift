//
//  TopicRequestSpec.swift
//  AskMonaApiTests
//
//  Created by msano on 2017/12/24.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import Quick
import Nimble
import APIKit
import OHHTTPStubs
import Result

@testable import AskMonaApi

class TopicRequestSpec: QuickSpec {

    override func spec() {

        describe("response handling") {
            context("status code is 1") {
                it("returns data") {
                    // stub
                }
            }
            context("status code isnot 1") {
                it("returns error info") {
                    // stub
                }
            }
            context("service error (no status))") {
                it("returns error info") {
                    // stub
                }
            }
        }
    }
}

// MARK: Test objects
//fileprivate struct TestRequest: TopicRequest {
//
//}
