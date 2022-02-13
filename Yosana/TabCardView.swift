//
//  ContentView.swift
//  Yosana
//
//  Created by Sathriyan on 13/02/22.
//

import SwiftUI

struct TabCardView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                        .renderingMode(.template)
                    
                    Text("Today")
                }
            
            Text("Games")
                .tabItem {
                    Image(systemName: "gamecontroller")
                        .renderingMode(.template)
                    
                    Text("Games")
                }
            
            Text("Apps")
                .tabItem {
                    Image(systemName: "square.stack.3d.up.fill")
                        .renderingMode(.template)
                    
                    Text("Apps")
                }
            
            Text("Arcade")
                .tabItem {
                    Image(systemName: "gamecontroller")
                        .renderingMode(.template)
                    
                    Text("Arcade")
                }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .renderingMode(.template)
                    
                    Text("Search")
                }
        }
    }
}

struct TabCardView_Previews: PreviewProvider {
    static var previews: some View {
        TabCardView()
    }
}
