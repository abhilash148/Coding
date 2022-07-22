//
//  License_Key_Formatting.swift
//  DailyChallenge
//
//  Created by Sai Abhilash Gudavalli on 22/07/22.
//

import Foundation

class LicenseKeyFormatting {
    
    func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
        
        var outputString: String = ""
        var count = 0
        
        for ch in s.reversed() {
            if ch != "-" {
                if count == k {
                    count = 0
                    outputString += "-"
                }
                count += 1
                outputString += String(ch).uppercased()
            }
        }
        return String(outputString.reversed())
    }
    
    func printResult(_ s: String, _ k: Int) {
        print(licenseKeyFormatting(s, k))
    }
}
