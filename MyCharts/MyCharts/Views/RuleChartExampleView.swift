//
//  RuleChartExampleView.swift
//  MyCharts
//
//  Created by Rafael Plinio on 03/06/24.
//

import SwiftUI
import Charts

struct RuleChartExampleView: View {
    var data = [ChartData(type: "Cat", count: 1),
                ChartData(type: "Dog", count: 2),
                ChartData(type: "Reptile", count: 3),
                ChartData(type: "Other", count: 4)]

    var maxChartData: ChartData? {
        data.max { $0.count < $1.count }
    }

    var body: some View {
        Chart {
            ForEach(data) { dataPoint in
                BarMark(x: .value("Type", dataPoint.type),
                        y: .value("Population", dataPoint.count))
                .opacity(maxChartData == dataPoint ? 1 : 0.5)
                .foregroundStyle(maxChartData == dataPoint ? Color.accentColor : Color.gray)
            }

            RuleMark(y: .value("Average", 1.5))
                .foregroundStyle(.orange)
                .annotation(position: .bottom, alignment: .bottomLeading) {
                    Text("Average 1.5")
                }
        }
        .aspectRatio(contentMode: .fit)
        .padding()
    }
}

#Preview {
    RuleChartExampleView()
}
