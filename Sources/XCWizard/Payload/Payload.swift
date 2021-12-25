// Copyright © 2021 Anton Quietzsch

import ArgumentParser
import Foundation

/// The payload that shoud be transferred.
enum Payload {
    /// Items in the `./FontAndColorThemes` directory.
    case fontAndColorThemes(Directory<XCColorTheme>)
    /// Items in the `./KeyBindings` directory.
    case keyBindings(Directory<IDEKeybindings>)
    /// Items in the `./CodeSnippets` directory.
    case codeSnippets(Directory<CodeSnippet>)
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
