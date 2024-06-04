//
//  ChartData.swift
//  MyCharts
//
//  Created by Rafael Plinio on 31/05/24.
//

import Foundation

struct ChartData: Identifiable, Equatable {
    var type: String
    var count: Int
    var id: String { return type }
}
