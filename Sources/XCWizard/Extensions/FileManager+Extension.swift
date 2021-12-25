// Copyright © 2021 Anton Quietzsch

import Foundation

extension FileManager {
    /// The directory containing the Xcode user data.
    var workingDirectory: URL {
        get throws {
            try url(for: .libraryDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
                .appendingPathComponent("Developer")
                .appendingPathComponent("Xcode")
                .appendingPathComponent("UserData")
        }
    }
}
