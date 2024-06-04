//
//  PetStatisticsView.swift
//  MyCharts
//
//  Created by Rafael Plinio on 31/05/24.
//

import SwiftUI
import Charts

struct PetStatisticsView: View {

    let catData = PetData.catSample
    let dogData = PetData.dogSample
    let other = PetData.other

    var body: some View {
        Chart {
            ForEach(catData) { data in
                BarMark(x: .value("Year", data.year),
                        y: .value("Population", data.population))
            }
            .foregroundStyle(.yellow)

            ForEach(dogData) { data in
                BarMark(x: .value("Year", data.year),
                        y: .value("Population", data.population))
            }
            .foregroundStyle(.green)

            ForEach(other) { data in
                BarMark(x: .value("Year", data.year),
                        y: .value("Population", data.population))
            }

        }

        .chartXScale(domain: 1998...2024)
        .aspectRatio(contentMode: .fit)
        .padding()
    }
}

#Preview {
    PetStatisticsView()
}
