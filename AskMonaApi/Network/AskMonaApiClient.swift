//
//  AskMonaApiClient.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/18.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import APIKit
import Result

public protocol AskMonaClientProtocol {
    func send<RequestType: AskMonaRequest>(
        _ request: RequestType,
        handler: @escaping (Result<RequestType.Response, AskMonaApiError>) -> Void
        ) -> AskMonaSessionTask?
}

public final class AskMonaClient: AskMonaClientProtocol {
    // : unuse?
    //    public init() {}

    public func send<RequestType: AskMonaRequest>(
        _ request: RequestType,
        handler: @escaping (Result<RequestType.Response, AskMonaApiError>) -> Void)
        -> AskMonaSessionTask? {
            return Session.send(request) { result in
                handler(result.mapError(AskMonaApiError.init))
            }
            .map(AskMonaSessionTask.init)
    }
}
