//
//  UIApplication.swift
//  CoinHawk
//
//  Created by Cameron Cronheimer on 2021-08-23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
