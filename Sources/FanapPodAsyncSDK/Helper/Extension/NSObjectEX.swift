//
// NSObjectEX.swift
// Copyright (c) 2022 FanapPodAsyncSDK
//
// Created by Hamed Hosseini on 9/27/22.

import Foundation
public extension NSObject {
    /// Address of the object in memory in string.
    var addressOfObjectInMemory: String? {
        let address = Unmanaged.passUnretained(self).toOpaque()
        return "\(address)"
    }
}
