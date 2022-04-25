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
                Section(header:
                    HStack {
                        Text("Monday").font(.title2).fontWeight(.bold).foregroundColor(.black)
                        
                        Spacer()
                        
                        Button(action: {}, label: {Text("Tap")})
                    }){
                    ForEach(mondayArr) { monday in
                        Text(monday.title)
                    }
                }
                
                Section(header: Text("Tuesday").font(.title2).fontWeight(.bold).foregroundColor(.black)){
                    ForEach(tuesdayArr) { tuesday in
                        Text(tuesday.title)
                    }
                }
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
