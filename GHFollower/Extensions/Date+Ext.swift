//
//  Date+Ext.swift
//  GHFollower
//
//  Created by Mac pro on 23/08/25.
//

import Foundation

extension Date{
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
