//
//  MyChartsView.swift
//  MyCharts
//
//  Created by Rafael Plinio on 31/05/24.
//

import SwiftUI
import Charts

struct MyChartsView: View {

    @State private var averageIsShown = false
    @State private var averageAge = 0
    @ObservedObject private var viewModel = MyChartsViewModel()

    var body: some View {
        VStack {
            Chart {
                ForEach(viewModel.chartData) { item in
                    BarMark(x: .value("Type", item.type),
                            y: .value("Cost", item.count))
                }

                if averageIsShown {
                    RuleMark(y: .value("Average", viewModel.getAverageAge()))
                        .foregroundStyle(.red)
                        .annotation(position: .bottom, alignment: .leading) {
                            Text("Average \(viewModel.getAverageAge())")
                        }
                }
            }
            .aspectRatio(1, contentMode: .fit)

            Toggle("Show Average", isOn: $averageIsShown.animation())
        }
        .padding()
    }
}

#Preview {
    MyChartsView()
}
