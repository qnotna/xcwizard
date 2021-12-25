// Copyright © 2021 Anton Quietzsch

import Foundation

/// A directory of files.
struct Directory<Contents: File> {
    var files = [Contents]()
}

extension Directory: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Contents...) {
        self.files = elements
    }
}
