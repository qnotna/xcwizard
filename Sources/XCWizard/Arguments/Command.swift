// Copyright © 2021 Anton Quietzsch

import ArgumentParser
import Foundation

struct Command: ParsableCommand {
    @Argument(help: "Choose whether to save or load a Xcode configuration.")
    private var strategy: Strategy

    @Argument(help: "The location of the directory containing the current Xcode configuration.")
    private var fileUrl: URL

    func run() throws {
        switch strategy {
        case .save: saveConfiguration()
        case .load: loadConfiguration()
        }
        print("Magic complete performing strategy \(strategy)")
    }

    private func saveConfiguration() {
        print("Saved.")
    }

    private func loadConfiguration() {
        print("Loaded.")
    }
}
