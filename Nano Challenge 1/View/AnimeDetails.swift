//
//  AnimeDetails.swift
//  Nano Challenge 1
//
//  Created by Jonathan Ricky Sandjaja on 28/04/22.
//

import SwiftUI

struct AnimeDetails: View {
    var anime: AnimeData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(anime.title)
                .font(.largeTitle)
            
            Text("Released on : \(anime.day)")
            
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
