//
//  AppSecretConstantsProvider.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/28.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public final class AppSecretConstantsProvider {
    var appSecretConstants: AppSecretConstants?

    public init() {
        appSecretConstants = prepareAppSecretConstants()
    }

    private func prepareAppSecretConstants() -> AppSecretConstants? {
        let bundle = Bundle(for: type(of: self)) // NOTE: for iOS framework
        guard let jsonPath = bundle.path(forResource: "app_secret_constants", ofType: "json") else {
            let error = """
                    [Error] : Could not find appConstants. Check README
                    https://foo.com/
                    """
            print(error)
            return nil
        }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: jsonPath))
            let _aapSecretConstants = try? JSONDecoder().decode(AppSecretConstants.self, from: data)
            return _aapSecretConstants
        } catch {
            print("[Error] : Could not init jsonData.")
            return nil
        }
    }
}
