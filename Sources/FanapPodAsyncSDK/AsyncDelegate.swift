//
//  AsyncDelegate.swift
//  FanapPodAsyncSDK
//
//  Created by Hamed Hosseini on 10/20/21.
//

import Foundation

/// Delegate to notify events that occur on an async object.
public protocol AsyncDelegate: AnyObject{

    /// When a new message arrive it called.
    /// - Parameter asyncMessage: An async message that contains content and type of message and e.g.
    func asyncMessage(asyncMessage:AsyncMessage)

    /// It will be called whenever the socket state change.
    /// - Parameters:
    ///   - asyncState: State of current async object.
    ///   - error: An error if something wrong occurs in the system.
    func asyncStateChanged(asyncState:AsyncSocketState, error:AsyncError?)

    /// It will tell you what message is right now dispatched to the server.
    ///
    /// If a message was queued, it will call.
    /// - Parameter message: A message that has sent to the server.
    func asyncMessageSent(message:Data)

    /// It will tell you a little bit of information about the error had happened.
    /// - Parameter error:  An error if something wrong occurs in the system.
    func asyncError(error:AsyncError)
}