//
//  SafariExtensionViewController.swift
//  Nightshift Extension
//
//  Created by Леша Маслаков on 3/23/20.
//  Copyright © 2020 Леша Маслаков.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    @IBOutlet weak var domainLabel: NSTextField!
    @IBOutlet weak var toggleButton: NSButton!
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width: 150, height: 90)
        return shared
    }()
    
    var darkMode: Bool = false {
        didSet {
            if darkMode {
                toggleButton.title = "Disable"
            } else {
                toggleButton.title = "Enable"
            }
            toggleButton.title += " Nightshift"
        }
    }
    
    var host: String? {
        didSet {
            if let host = host {
                domainLabel.stringValue = host
            } else {
                domainLabel.stringValue = "..."
            }
        }
    }
    
    var onDarkModeOn: (() -> Void)?
    var onDarkModeOff: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClick(_ sender: Any) {
        if darkMode {
            onDarkModeOff?()
        } else {
            onDarkModeOn?()
        }
        darkMode = !darkMode;
    }
}
