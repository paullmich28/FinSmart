//
//  Loans.swift
//  FinSmart
//
//  Created by Paulus Michael on 30/03/24.
//

import Foundation
import SwiftUI

struct Loans: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var amount: Int
    var platform: String
    var dueDate: Int
}
