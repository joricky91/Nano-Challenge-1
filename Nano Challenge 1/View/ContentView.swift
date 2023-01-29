//
//  ContentView.swift
//  Nano Challenge 1
//
//  Created by Jonathan Ricky Sandjaja on 25/04/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AnimeViewModel
    
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
                                if daily.dayReleased?.lowercased() == day.lowercased() {
                                    NavigationLink(destination: AnimeDetails(anime: daily)) {
                                        Text(daily.title ?? "")
                                    }
                                }
                            }
                            .onDelete(perform: { indexSet in
                                indexSet.forEach { index in
                                    let anime = viewModel.animeArr[index]
                                    viewModel.delete(anime: anime)
                                }
                                viewModel.fetchAnimeData()
                            })
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
        .onAppear {
            viewModel.fetchAnimeData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

