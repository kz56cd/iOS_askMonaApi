//
//  AskMonaSessionTask.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/18.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation
import APIKit

public class AskMonaSessionTask {
    let sessionTask: SessionTask
    public init(sessionTask: SessionTask) {
        self.sessionTask = sessionTask
    }

    public func resume() {
        sessionTask.resume()
    }

    public func cancel() {
        sessionTask.cancel()
    }
}
