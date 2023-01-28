//
//  AnimeDetails.swift
//  Nano Challenge 1
//
//  Created by Jonathan Ricky Sandjaja on 28/04/22.
//

import SwiftUI
import CoreData

struct AnimeDetails: View {
    var anime: Anime
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(anime.title ?? "")
                .font(.largeTitle)
            
            Text("Released on : \(anime.dayReleased ?? "")")
            
            Spacer()
        }
        .frame(width: 350, height: .infinity, alignment: .leading)
    }
}

//struct AnimeDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        AnimeDetails()
//    }
//}
