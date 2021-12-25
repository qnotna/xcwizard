// Copyright © 2021 Anton Quietzsch

import ArgumentParser

extension ArgumentHelp {
    static let strategy: Self               = "Whether to 'save' or 'load' contents from or to iCloud."

    static let skipFontAndColorThemes: Self = "Skips 'xccolortheme' files from '/FontAndColorThemes'."
    static let skipKeyBindings: Self        = "Skips 'idekeybindings' files from '/KeyBindings'."
    static let skipCodeSnippets: Self       = "Skips 'codesnippet' files from '/CodeSnippets'."
    static let skipUserStates: Self         = "Skips 'xcuserstate' files from the current directory."
    static let skipOther: Self              = "Skips other files from the current directory."

    static let createIfNeeded: Self         = "Creates the directory if it does not already exist."
}
