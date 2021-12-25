// Copyright © 2021 Anton Quietzsch

import Foundation

/// File contents of any other files that are binary data.
struct Binary: File {
    let data: Data

    var `extension`: String? { nil }
}
