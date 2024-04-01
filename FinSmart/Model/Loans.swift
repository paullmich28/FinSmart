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
    var loanAmount: Int
    var loanedFrom: String
    var startDate: String
    var dueDate: String
    var installmentPeriod: Int
    var hasPaid: Int
    var lastPaid: String
}
