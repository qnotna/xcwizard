// Copyright © 2021 Anton Quietzsch

import Foundation

/// Represents a `.xcuserstate` file.
enum XCUserState: CaseIterable, File {
    case preferencesController
    case editorInteractivityHistory
    case organizerWindowController
}
