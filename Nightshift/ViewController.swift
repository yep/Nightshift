//
//  ViewController.swift
//  Nightshift
//
//  Created by Леша Маслаков on 3/23/20.
//  Copyright © 2020 Леша Маслаков.
//

import Cocoa
import SafariServices.SFSafariApplication

class ViewController: NSViewController {
    @IBAction func openSafariExtensionPreferences(_ sender: NSButton) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "com.github.yep.macos.nightshift.extension") { error in
            if let error = error {
                DispatchQueue.main.async {
                    self.display(error: error)
                }
            }
        }
    }
    
    fileprivate func display(error: Error) {
        let alert = NSAlert()
        alert.messageText = "Could not open Safari Extension"
        alert.informativeText = error.localizedDescription
        alert.alertStyle = .warning
        alert.addButton(withTitle: "OK")
        alert.beginSheetModal(for: self.view.window!, completionHandler: nil)
    }
}
