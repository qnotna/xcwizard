// Copyright © 2021 Anton Quietzsch

import ArgumentParser

/// How the wizard should handle the Xcode configuration
enum Strategy: String {
    case save, load
}

extension Strategy: ExpressibleByArgument, RawRepresentable {
    init?(argument: String) {
        self.init(rawValue: argument)
    }
}
