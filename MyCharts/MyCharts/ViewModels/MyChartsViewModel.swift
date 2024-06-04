//
//  PetData.swift
//  MyCharts
//
//  Created by Rafael Plinio on 31/05/24.
//

import Foundation

class MyChartsViewModel: ObservableObject {

    let chartData = [ChartData(type: "bird", count: 1),
                     ChartData(type: "dog", count: 3),
                     ChartData(type: "cat", count: 3)]

    func getAverageAge() -> Int {
        var countSum = 0
        var divider = 0
        for item in chartData {
            countSum += item.count
            divider += 1
        }
        
        return countSum/divider
    }
}


