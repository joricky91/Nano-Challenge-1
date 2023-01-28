//
//  File.swift
//  Nano Challenge 1
//
//  Created by Jonathan Ricky Sandjaja on 27/04/22.
//

import Foundation
import SwiftUI
import CoreData

class AnimeViewModel: ObservableObject {
    var day: String = ""
    @Published var animeArr: [AnimeData] = arrayOfAnime
    @Published var anime: String = ""
    @Published var animeDay: String = ""
    var managedObjectContext = CoreDataManager.shared.container.viewContext
    
    func addNewData(title: String, day: String) {
        let anime = Anime(context: managedObjectContext)
        anime.title = title
        anime.dayReleased = day
        
        CoreDataManager.shared.save()
        print("Success")
    }
    
    func alertView() {
        let alert = UIAlertController(title: "Add New Anime", message: "Add the anime that was released on \(day)", preferredStyle: .alert)
        
        alert.addTextField { anime in
            anime.placeholder = "Insert anime title..."
        }
        
        alert.addTextField { day in
            day.placeholder = "Insert day..."
        }
        
        let addAnime = UIAlertAction(title: "Add", style: .default, handler: {(_) in
//            self.anime = alert.textFields![0].text!
//            self.animeDay = alert.textFields![1].text!
////            let newAnime = Anime(title: self.anime, day: self.day)
//            self.animeArr.append(AnimeData(title: self.anime, day: self.animeDay))
            self.addNewData(title: alert.textFields![0].text!, day: alert.textFields![1].text!)
        })
        let cancelAnime = UIAlertAction(title: "Cancel", style: .destructive, handler: {(_) in})
       
        alert.addAction(addAnime)
        alert.addAction(cancelAnime)
        
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: {})
    }
    
    func delete(at offsets: IndexSet) {
        self.animeArr.remove(atOffsets: offsets)
    }

}
