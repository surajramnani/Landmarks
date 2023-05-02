//
//  ContentView.swift
//  Landmarks
//
//  Created by Suraj Ramnani on 27/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: tab = .featured
    
    enum tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection:$selection){
            CategoryHome()
                .tabItem{
                    Label("Featured", systemImage:"star")
                }
               .tag(tab.featured)
            
        
  LandmarkList()
            .tabItem{
                Label("List", systemImage: "list.bullet")
            }
            .tag(tab.list)
        
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
