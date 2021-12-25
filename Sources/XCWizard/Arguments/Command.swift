// Copyright © 2021 Anton Quietzsch

import ArgumentParser
import Foundation

struct Command: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "xcwizard",
        abstract: "Transfer your Xcode configuration to new Macs or users using iCloud",
        discussion: "Configuration files will be synchronized between iCloud and '~/Library/Developer/Xcode/UserData'. You can choose which files to exclude from transferring by using the 'skip' flags.",
        version: "1.0.0"
    )

    // MARK: - User input

    @Argument(help: .strategy)           private var strategy: Strategy

    @Flag(help: .skipFontAndColorThemes) private var skipFontAndColorThemes = false
    @Flag(help: .skipKeyBindings)        private var skipKeyBindings = false
    @Flag(help: .skipCodeSnippets)       private var skipCodeSnippets = false
    @Flag(help: .skipUserStates)         private var skipUserStates = false
    @Flag(help: .skipOther)              private var skipOther = false

    @Flag(help: .createIfNeeded)         private var createIfNeeded = false

    // MARK: - Collecting the payload

    private var payload: [Payload] {
        []
    }

    // MARK: - Running the command

    func run() throws {
        do {
            let directory = try FileManager.default.workingDirectory
            if try directory.checkResourceIsReachable() {
                switch strategy {
                case .save:
                    if createIfNeeded {
                        fatalError("Not yet implemented.")
                    }
                    saveToDisk()
                case .load:
                    loadFromCloud()
                }
                print("Magic complete performing strategy \(strategy)")
            } else {
                fatalError("Not yet implemented.")
            }
        } catch {
            Self.exit(withError: error)
        }
    }

    private func saveToDisk() {
        print("Saved \(payload).")
    }

    private func loadFromCloud() {
        print("Loaded \(payload).")
    }
}
