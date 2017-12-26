//
//  UserRequestWithNetworkSpec.swift
//  AskMonaApiTests
//
//  Created by msano on 2017/12/27.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import Quick
import Nimble
import APIKit
import Result

@testable import AskMonaApi

class UserRequestWithNetworkSpec: QuickSpec {

    override func spec() {
        beforeEach {
            // stub
        }

        it("get user") {
            // act
            var result: User?
            var error: Error? = TestError.makeNotChangedError()
            let request = OneUserRequest(userId: 10135)
            Session.send(request) { _result in // swiftlint:disable:this identifier_name
                result = _result.value
                error = _result.error
                print("🍏 \(String(describing: type(of: self))): \(result.debugDescription)")
                print("🍎 \(String(describing: type(of: self))): \(error.debugDescription)")
            }

            // assert
            expect(result).toEventuallyNot(beNil(), timeout: 1.5)
            expect(error).toEventually(beNil(), timeout: 1.5)
        }
    }
}
