//
//  LineChartExampleView.swift
//  MyCharts
//
//  Created by Rafael Plinio on 03/06/24.
//

import SwiftUI
import Charts

struct LineChartExampleView: View {
    let catData = PetData.catSample
    let dogData = PetData.dogSample
    let other = PetData.other

    var data: [(type: String, petData: [PetData])] {
        [(type: "Cat", petData: catData),
         (type: "Dog", petData: dogData),
         (type: "Other", petData: other)]
    }
    var body: some View {
        Chart(data, id: \.type) { dataSeries in
            ForEach(dataSeries.petData) { petData in
                LineMark(x: .value("Year", petData.year),
                         y: .value("Population", petData.population))
            }
            .foregroundStyle(by: .value("Pet Type", dataSeries.type))
            .symbol(by: .value("Pet Type", dataSeries.type))
        }
        .chartXScale(domain: 1998...2024)
        .aspectRatio(contentMode: .fit)
        .padding()
    }
}

#Preview {
    LineChartExampleView()
}
