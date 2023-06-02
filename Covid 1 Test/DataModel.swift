//
//  DataModel.swift
//  Covid 1 Test
//
//  Created by Yogesh Tekwani on 6/1/23.
//

import Foundation

struct Details: Codable{
    let date: Int?
    let state: String?
    let positive: Int?
    let death: Int?
    let hospitalized: Int?
}

