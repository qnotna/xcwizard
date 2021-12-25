// Copyright © 2021 Anton Quietzsch

import ArgumentParser
import Foundation

extension URL: ExpressibleByArgument {
    public init?(argument: String) {
        self.init(string: argument)
    }
}
