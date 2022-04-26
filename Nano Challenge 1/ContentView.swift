//
//  ContentView.swift
//  Nano Challenge 1
//
//  Created by Jonathan Ricky Sandjaja on 25/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            List {
                ListView(day: "Monday", animeArr: mondayArr)
                
                ListView(day: "Tuesday", animeArr: tuesdayArr)
                
                ListView(day: "Wednesday", animeArr: wednesdayArr)
                
                ListView(day: "Thursday", animeArr: thursdayArr)
                
                ListView(day: "Friday", animeArr: fridayArr)
                
                ListView(day: "Saturday", animeArr: saturdayArr)
                
                ListView(day: "Sunday", animeArr: sundayArr)
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Anime Watchlist")
        }
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
