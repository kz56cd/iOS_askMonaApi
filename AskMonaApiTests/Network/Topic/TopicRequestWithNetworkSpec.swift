//
//  TopicRequestWithNetworkSpec.swift
//  AskMonaApiTests
//
//  Created by msano on 2017/12/24.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import Quick
import Nimble
import APIKit
import Result

@testable import AskMonaApi

class TopicRequestWithNetworkSpec: QuickSpec {

    override func spec() {
        beforeEach {
            // stub
        }

        it("get topics") {
            // act
            var result: Topics?
            var error: Error? = TestError.makeNotChangedError()
            let request = TopicListRequest(order: .created)
            Session.send(request) { _result in // swiftlint:disable:this identifier_name
                result = _result.value
                error = _result.error

                print("🔥 \(result.debugDescription)")
                print("🔥 \(error.debugDescription)")
            }

            // assert
            expect(result).toEventuallyNot(beNil(), timeout: 1.5)
            expect(error).toEventually(beNil(), timeout: 1.5)
        }
    }

}
