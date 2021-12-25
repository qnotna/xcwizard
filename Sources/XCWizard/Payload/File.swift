// Copyright © 2021 Anton Quietzsch

import Foundation

/// A file on disk.
protocol File {
    /// The file extension, e.g. `swift`.
    var `extension`: String? { get }
}

extension File {
    var `extension`: String? {
        String(describing: self)
    }
}
