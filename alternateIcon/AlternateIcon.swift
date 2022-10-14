//
//  AlternateIcon.swift
//  alternateIcon
//
//  Created by Sugeun Jun on 2022/10/15.
//

import Foundation

enum AlternateIcon: String, CaseIterable {
    case `default` = "AppIcon"
    case red
    case yellow
    case green
    
    var iconName: String? {
        self == .default ? nil : rawValue
    }
}
