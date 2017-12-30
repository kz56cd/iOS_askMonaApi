//
//  AppSecretProvider.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/28.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public final class AppSecretProvider {
    let appSecretConstants: AppSecretConstants?

    public init() {
        guard let jsonPath = Bundle.main.path(forResource: "app_secret_constants", ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: jsonPath)) else {
                let error = """
                    [Error] : Could not find appConstants. Check README
                    https://foo.com/
                    """
                print(error)
                appSecretConstants = nil
                return
        }
        let _aapSecretConstants = try? JSONDecoder().decode(AppSecretConstants.self, from: data)
        appSecretConstants = _aapSecretConstants
    }
}
