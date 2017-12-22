//
//  AskMonaApiClientRequestSpec.swift
//  AskMonaApiTests
//
//  Created by msano on 2017/12/18.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import Quick
import Nimble
import APIKit
import OHHTTPStubs
import Result

@testable import AskMonaApi

class AskMonaApiClientRequestSpec: QuickSpec {

    override func spec() {

        var client: AskMonaClient!
        beforeEach {
            OHHTTPStubs.removeAllStubs()
            client = AskMonaClient()
        }

        describe("sending api requst") {
            it("returns AskMonaSessionTask") {
                // arrange
                stub(condition: isHost("foo.com") && isPath("/bar"), response: { _ -> OHHTTPStubsResponse in
                    return OHHTTPStubsResponse(
                        jsonObject: ["key", "value"],
                        statusCode: 200,
                        headers: nil
                    )
                })

                // act
                let task = client.send(TestRequest(), handler: { _ in })

                print(String(describing: task))

                // assert
                expect(String(describing: task)) == "Optional(AskMonaApi.AskMonaSessionTask)"
            }

            context("network error") {
                it("returns AskMonaApiError") {
                    // arrange
                    // act
                    // assert

                    // wip
                }
            }
        }
    }
}

// MARK: - dummy
private struct TestRequest: AskMonaRequest {
    typealias Response = String
    let baseURL: URL = URL(string: "https://foo.com")!
    let method: HTTPMethod = .get
    let path: String = "/bar"
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> String {
        return "test"
    }
}
