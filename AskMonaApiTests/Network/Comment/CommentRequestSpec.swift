//
//  CommentRequestSpec.swift
//  AskMonaApiTests
//
//  Created by msano on 2017/12/26.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import Quick
import Nimble
import APIKit
import OHHTTPStubs
import Result

@testable import AskMonaApi

class CommentRequestSpec: QuickSpec {

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
