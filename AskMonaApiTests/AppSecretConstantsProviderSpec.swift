//
//  AppSecretConstantsProviderSpec.swift
//  AskMonaApiTests
//
//  Created by msano on 2017/12/30.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import Quick
import Nimble
import APIKit
import Result

@testable import AskMonaApi

class AppSecretConstantsProviderSpec: QuickSpec {

    override func spec() {
        beforeEach {
            // stub
        }

        it("get appSecrets info") {
            // act
            let appConstants = AppSecretConstantsProvider().appSecretConstants ?? nil

            print("🤡 appConstants?.appId : \(appConstants?.appId)")
            print("🤡 appConstants?.appSecretKey : \(appConstants?.appSecretKey)")

            // assert
            expect(appConstants?.appId).toEventuallyNot(beNil(), timeout: 1.5)
            expect(appConstants?.appSecretKey).toEventuallyNot(beNil(), timeout: 1.5)
        }
    }

}
