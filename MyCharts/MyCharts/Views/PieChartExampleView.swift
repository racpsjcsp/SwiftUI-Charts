//
//  PieChartExampleView.swift
//  MyCharts
//
//  Created by Rafael Plinio on 03/06/24.
//

import SwiftUI
import Charts

struct PieChartExampleView: View {
    let catData = PetData.catSample
    let dogData = PetData.dogSample

    var catTotal: Double {
        catData.reduce(0) { $0 + $1.population }
    }

    var dogTotal: Double {
        dogData.reduce(0) { $0 + $1.population }
    }

    var maxPet: String? {
        data.max { $0.amount < $1.amount }?.type
    }

    var data: [(type: String, amount: Double)] {
        [(type: "cat", amount: catTotal),
         (type: "dog", amount: dogTotal)]
    }

    var body: some View {
        Chart(data, id: \.type) { dataPoint in
            SectorMark(angle: .value("Type", dataPoint.amount), innerRadius: 1.5, angularInset: 1.5)
                .cornerRadius(16)
                .opacity(dataPoint.type == maxPet ? 1 : 0.5)

        }
        .frame(height: 350)
    }
}

#Preview {
    PieChartExampleView()
}
