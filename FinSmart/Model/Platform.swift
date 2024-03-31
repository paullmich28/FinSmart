//
//  Platforms.swift
//  FinSmart
//
//  Created by Paulus Michael on 30/03/24.
//

import Foundation
import SwiftUI

struct Platform: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var interestRate: Double
    var adminFee: Double
    var limit: Int
    var latenessFee: Double
    
//    private var logoUrl: String
//    var logo: Image{
//        Image(logoUrl)
//    }
}
