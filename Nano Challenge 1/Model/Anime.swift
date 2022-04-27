//
//  Anime.swift
//  Nano Challenge 1
//
//  Created by Jonathan Ricky Sandjaja on 25/04/22.
//

import Foundation
import SwiftUI

struct Anime: Identifiable {
    var id = UUID()
    var title: String
    var day: String
}

var arrayOfAnime: [Anime] = [
    Anime(title: "Kimetsu no Yaiba", day: "Monday"),
    Anime(title: "Attack on Titan", day: "Monday"),
    Anime(title: "Boruto", day: "Tuesday"),
    Anime(title: "Healer Girl", day: "Tuesday"),
    Anime(title: "Tate no Yuusha S2", day: "Wednesday"),
    Anime(title: "Shijou Saikyou no Daimaou", day: "Wednesday"),
    Anime(title: "Paripi Koumei", day: "Thursday"),
    Anime(title: "Komi-san S2", day: "Thursday"),
    Anime(title: "Date a Live S4", day: "Friday"),
    Anime(title: "Heroine Tarumono", day: "Friday"),
    Anime(title: "Cue!", day: "Saturday"),
    Anime(title: "Kaguya-sama S3", day: "Saturday"),
    Anime(title: "One Piece", day: "Sunday"),
    Anime(title: "Spy x Family", day: "Sunday")
]

var arrayofDay = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]


