//
//  HapticManager.swift
//  CoinHawk
//
//  Created by Cameron Cronheimer on 2021-08-26.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
