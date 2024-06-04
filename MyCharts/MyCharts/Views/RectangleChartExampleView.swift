//
//  RectangleChartExampleView.swift
//  MyCharts
//
//  Created by Rafael Plinio on 03/06/24.
//

import SwiftUI
import Charts

struct RectangleChartExampleView: View {
    let catData = PetData.catSample

    var body: some View {
        Chart {
            ForEach(catData) { dataPoint in
                RectangleMark(x: .value("Year", dataPoint.year),
                              y: .value("Population", dataPoint.population),
                              width: 50, height: 10)
            }
        }
    }
}

#Preview {
    RectangleChartExampleView()
}
