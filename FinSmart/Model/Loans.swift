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
    var startDate: Date
    var dueDate: Date
    var installmentPeriod: Int
    var hasPaid: Int
    var lastPaid: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, loanAmount, loanedFrom, startDate, dueDate, installmentPeriod, hasPaid, lastPaid
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        loanAmount = try container.decode(Int.self, forKey: .loanAmount)
        loanedFrom = try container.decode(String.self, forKey: .loanedFrom)
        installmentPeriod = try container.decode(Int.self, forKey: .installmentPeriod)
        hasPaid = try container.decode(Int.self, forKey: .hasPaid)
        lastPaid = try container.decode(String.self, forKey: .lastPaid)
        
        // Decode dates
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        startDate = try dateFormatter.date(from: container.decode(String.self, forKey: .startDate)) ?? Date()
        dueDate = try dateFormatter.date(from: container.decode(String.self, forKey: .dueDate)) ?? Date()
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(loanAmount, forKey: .loanAmount)
        try container.encode(loanedFrom, forKey: .loanedFrom)
        try container.encode(installmentPeriod, forKey: .installmentPeriod)
        try container.encode(hasPaid, forKey: .hasPaid)
        try container.encode(lastPaid, forKey: .lastPaid)
        
        // Encode dates
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        try container.encode(dateFormatter.string(from: startDate), forKey: .startDate)
        try container.encode(dateFormatter.string(from: dueDate), forKey: .dueDate)
    }
}
