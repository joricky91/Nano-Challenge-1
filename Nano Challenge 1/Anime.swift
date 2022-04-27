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
}

var mondayArr: [Anime] = [
    Anime(title: "Kimetsu no Yaiba"),
    Anime(title: "Attack on Titan")
]

var tuesdayArr: [Anime] = [
    Anime(title: "Boruto"),
    Anime(title: "Healer Girl")
]

var wednesdayArr: [Anime] = [
    Anime(title: "Tate no Yuusha S2"),
    Anime(title: "Shijou Saikyou no Daimaou")
]

var thursdayArr: [Anime] = [
    Anime(title: "Paripi Koumei"),
    Anime(title: "Komi-san S2")
]

var fridayArr: [Anime] = [
    Anime(title: "Date a Live S4"),
    Anime(title: "Heroine Tarumono")
]

var saturdayArr: [Anime] = [
    Anime(title: "Cue!"),
    Anime(title: "Kaguya-sama S3")
]

var sundayArr: [Anime] = [
    Anime(title: "One Piece"),
    Anime(title: "Spy x Family")
]

struct ListView: View {
    @State var day: String
    @State var animeArr: [Anime]
    @State var anime: String = ""
    
    var body: some View {
        Section(header:
            HStack {
                Text(day)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
                
                Button(action: {
                    alertView()
                    
                }, label: {Image(systemName: "plus.circle")})
            }){
            ForEach(animeArr) { daily in
                Text(daily.title)
            }
            .onDelete(perform: delete)
        }
    }
    
    func alertView() {
        let alert = UIAlertController(title: "Add New Anime", message: "Add the anime that was released on \(day)", preferredStyle: .alert)
        
        alert.addTextField { anime in
            anime.placeholder = "Insert anime title..."
        }
        
        let addAnime = UIAlertAction(title: "Add", style: .default, handler: {(_) in
            anime = alert.textFields![0].text!
            let newAnime = Anime(title: anime)
            animeArr.append(newAnime)
        })
        let cancelAnime = UIAlertAction(title: "Cancel", style: .destructive, handler: {(_) in})
       
        alert.addAction(addAnime)
        alert.addAction(cancelAnime)
        
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: {})
    }
    
    func delete(at offsets: IndexSet) {
        animeArr.remove(atOffsets: offsets)
    }
}

