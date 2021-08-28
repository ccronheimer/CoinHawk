//
//  String.swift
//  CoinHawk
//
//  Created by Cameron Cronheimer on 2021-08-27.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
