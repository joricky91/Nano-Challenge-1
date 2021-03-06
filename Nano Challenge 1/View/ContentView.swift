//
//  ContentView.swift
//  Nano Challenge 1
//
//  Created by Jonathan Ricky Sandjaja on 25/04/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = AnimeViewModel()
    
//    init() {
//        UITableView.appearance().backgroundColor = .red
//    }
    
    var body: some View {
        
        NavigationView {
            List{
                
                ForEach(arrayofDay, id: \.self) { day in
                    
                    Section(header:
                                
                        HStack {
        
                            Text(day)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        
                        }){
                            ForEach(viewModel.animeArr) { daily in
                                if daily.day.lowercased() == day.lowercased() {
                                    NavigationLink(destination: AnimeDetails(anime: daily)) {
                                        Text(daily.title)
                                    }
                                    
                                }
                            
                            }
                            .onDelete(perform: viewModel.delete)
                        }
                
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Anime Watchlist")
            .toolbar {
                Button(action: {
                    viewModel.alertView()
                }, label: {Image(systemName: "plus.circle")})
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

