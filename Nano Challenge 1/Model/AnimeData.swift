//
//  Anime.swift
//  Nano Challenge 1
//
//  Created by Jonathan Ricky Sandjaja on 25/04/22.
//

import Foundation
import SwiftUI

struct AnimeData: Identifiable {
    var id = UUID()
    var title: String
    var day: String
}

var arrayOfAnime: [AnimeData] = [
    AnimeData(title: "Kimetsu no Yaiba", day: "Monday"),
    AnimeData(title: "Attack on Titan", day: "Monday"),
    AnimeData(title: "Boruto", day: "Tuesday"),
    AnimeData(title: "Healer Girl", day: "Tuesday"),
    AnimeData(title: "Tate no Yuusha S2", day: "Wednesday"),
    AnimeData(title: "Shijou Saikyou no Daimaou", day: "Wednesday"),
    AnimeData(title: "Paripi Koumei", day: "Thursday"),
    AnimeData(title: "Komi-san S2", day: "Thursday"),
    AnimeData(title: "Date a Live S4", day: "Friday"),
    AnimeData(title: "Heroine Tarumono", day: "Friday"),
    AnimeData(title: "Cue!", day: "Saturday"),
    AnimeData(title: "Kaguya-sama S3", day: "Saturday"),
    AnimeData(title: "One Piece", day: "Sunday"),
    AnimeData(title: "Spy x Family", day: "Sunday")
]

var arrayofDay = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]


