//
//  Constants.swift
//  MessagingApp
//
//  Created by Carrington Tafadzwa Manyuchi on 2022/12/10.
//

struct K {
    
    static let registerSeque = "RegisterToChat"
    static let loginSeque = "LoginToChat"
    static let appName = "⚡️Messaging App"
    static let cellNibName = "MessageCell"
    static let cellIdentifier = "ReusableCell"
    
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
    
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lightBlue = "BrandLightBlue"
    }
}
