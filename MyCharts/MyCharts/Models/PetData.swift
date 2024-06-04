//
//  PetData.swift
//  MyCharts
//
//  Created by Rafael Plinio on 31/05/24.
//

import Foundation

struct PetData: Identifiable {
    let year: Int
    let population: Double
    var id: Int { year }

    static var catSample: [PetData] {
        [PetData(year: 2000, population: 6.8),
         PetData(year: 2010, population: 8.2),
         PetData(year: 2015, population: 12.9),
         PetData(year: 2015, population: 12.9),
         PetData(year: 2015, population: 12.9),
         PetData(year: 2015, population: 12.9),
         PetData(year: 2015, population: 12.9),
         PetData(year: 2015, population: 12.9),
         PetData(year: 2022, population: 15.2)]
    }

    static var dogSample: [PetData] {
        [PetData(year: 2000, population: 5.1),
         PetData(year: 2010, population: 7.2),
         PetData(year: 2015, population: 10.2),
         PetData(year: 2022, population: 14.1)]
    }

    static var other: [PetData] {
        [PetData(year: 2000, population: 1.1),
         PetData(year: 2010, population: 3.2),
         PetData(year: 2015, population: 4.5),
         PetData(year: 2022, population: 6.0)]
    }

    static var reptileSample: [PetData] {
        [PetData(year: 2000, population: 0.1),
         PetData(year: 2010, population: 1.2),
         PetData(year: 2015, population: 2.5),
         PetData(year: 2022, population: 3.0)]
    }
}

struct PetDataSeries: Identifiable {
    let type: String
    let petData: [PetData]
    var id: String { type }
}
