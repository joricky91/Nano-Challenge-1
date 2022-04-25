//
//  Anime.swift
//  Nano Challenge 1
//
//  Created by Jonathan Ricky Sandjaja on 25/04/22.
//

import Foundation

struct Anime: Identifiable {
    var id = UUID()
    var title: String
}

var mondayArr: [Anime] = [
    Anime(title: "Kimetsu no Yaiba"),
    Anime(title: "Attack on Titan")
]

var tuesdayArr: [Anime] = [
    Anime(title: "Paripi Koumei"),
    Anime(title: "Healer Girl")
]


