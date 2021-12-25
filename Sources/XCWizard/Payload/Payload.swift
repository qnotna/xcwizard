// Copyright © 2021 Anton Quietzsch

import ArgumentParser
import Foundation

/// The payload that shoud be transferred.
enum Payload {
    /// Items in the `./FontAndColorThemes` directory.
    case fontAndColorThemes([XCColorTheme])
    /// Items in the `./KeyBindings` directory.
    case keyBindings([IDEKeybindings])
    /// Items in the `./CodeSnippets` directory.
    case codeSnippets([CodeSnippet])
    /// All `.xcuserstate` files.
    case userState([XCUserState])
    /// All other files.
    case other([Binary])
}

extension Payload: ExpressibleByArgument {
    init?(argument: String) {
        fatalError("Not yet implemented.")
    }
}
