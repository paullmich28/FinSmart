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
    var interestRate: Float
    var adminFee: Float
    var limit: Int
    var latenessFee: Float
    
    private var logoUrl: String
    var logo: Image{
        Image(logoUrl)
    }
}
