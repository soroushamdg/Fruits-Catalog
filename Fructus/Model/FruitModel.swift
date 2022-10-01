//
//  FruitModel.swift
//  Fructus
//
//  Created by Soro on 2022-09-30.
//

import SwiftUI

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

