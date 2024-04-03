//
//  LoanProjectionModel.swift
//  FinSmart
//
//  Created by Nathanael Juan Gauthama on 02/04/24.
//

import Foundation

struct LoanProjectionModel{
    var totalLoan: Int
    var adminFee: Int
    var nettLoan: Int
    var monthlyInstallment: Int
    var remainingFunds: Int
    var latenessFee: String
    var loanDuration: Int
    
    init(totalLoan: Int, adminFee: Int, nettLoan: Int, monthlyInstallment: Int, remainingFunds: Int, latenessFee: String, loanDuration: Int) {
        self.totalLoan = totalLoan
        self.adminFee = adminFee
        self.nettLoan = nettLoan
        self.monthlyInstallment = monthlyInstallment
        self.remainingFunds = remainingFunds
        self.latenessFee = latenessFee
        self.loanDuration = loanDuration
    }
    
    fileprivate static func calculateAdminFee(_ loanAmount: Int, _ adminPercent: Double) -> Int {
        return Int(Double(loanAmount) * adminPercent / 100)
    }
    
    fileprivate static func calculateInstallment(_ totalLoan: Int, _ interest: Double) -> Int {
        return totalLoan + Int (Double(totalLoan) * interest / 100)
    }
    
    static func calculateLoanProjection(loanAmount: Int, adminPercent: Double, userPreviousFunds: Int, interest: Double, latenessFee: String, duration: Int) -> LoanProjectionModel{
        let totalLoan = loanAmount
        let adminFee = calculateAdminFee(loanAmount, adminPercent)
        let nettLoan = totalLoan - adminFee
        let monthlyInstallment = calculateInstallment(totalLoan, interest)
        let remainingFunds = userPreviousFunds - monthlyInstallment
        let latenessFee = latenessFee
        let duration = duration
        
        return LoanProjectionModel(totalLoan: totalLoan, adminFee: adminFee, nettLoan: nettLoan, monthlyInstallment: monthlyInstallment, remainingFunds: remainingFunds, latenessFee: latenessFee, loanDuration: duration)
        
    }
}
