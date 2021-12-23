// Copyright © 2021 Anton Quietzsch

import ArgumentParser

struct Command: ParsableCommand {
    @Argument(help: "Choose whether to save or load a Xcode configuration.")
    private var strategy: Strategy

    func run() throws {
        print("Magic complete performing strategy \(strategy)")
    }
}
