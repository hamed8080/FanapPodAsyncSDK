//
//  AsyncMessage.swift
//  FanapPodAsyncSDK
//
//  Created by Hamed Hosseini on 10/20/21.
//

import Foundation

/// When a message receive from the server you will receive it.
///
/// Behind the scene whenever you send a message a wrapper will create a message of this class and then send it to the socket. So it is two direction type of message.
public struct AsyncMessage : Codable{

    /// The content of the message.
    public var content        : String?

    /// The sender name of the message.
    public var senderName     : String?

    /// The id of the message if it has an id.
    public var id             : Int64?

    /// The type of message.
    public var type           : AsyncMessageTypes?

    ///  The sender Id.
    public var senderId       : Int64?

    /// The peer name.
    public var peerName       : String?
}
