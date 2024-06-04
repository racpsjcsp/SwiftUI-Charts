//
//  BarChartExampleView.swift
//  MyCharts
//
//  Created by Rafael Plinio on 31/05/24.
//

import SwiftUI
import Charts

struct BarChartExampleView: View {

    var data = [ChartData(type: "Cat", count: 13),
                ChartData(type: "Dog", count: 15),
                ChartData(type: "Reptile", count: 20),
                ChartData(type: "Other", count: 50)]

    var body: some View {
        Chart(data) { dataPoint in
            BarMark(x: .value("Population", dataPoint.count),
                    y: .value("Type", dataPoint.type))
            .foregroundStyle(by: .value("Type", dataPoint.type))
            .annotation(position: .trailing) {
                Text(String(dataPoint.count))
                    .foregroundStyle(.gray)
            }
        }
//        .chartLegend(.hidden)
        .chartXAxis(.hidden)
        .chartYAxis {
            //removing grid lines
            AxisMarks { _ in
                AxisValueLabel()
            }
        }
        .aspectRatio(contentMode: .fit)
        .padding()
    }
}

#Preview {
    BarChartExampleView()
}
