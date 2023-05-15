//
//  ContentView.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 31/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    @State private var selectedTab = "1"
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    }
    
    var body: some View {
        TabView {
            InspirationView(searchText: "")
                .tabItem {
                    Image(systemName: "tshirt")
                    Text("Inspiration")
                }
//                .onTapGesture {
//                    selectedTab = "2"
//                }
//                .tag("1")
            BookmarkPhotoGrid(bookmark: MockData().photos)
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Bookmark")
                }
//                .onTapGesture {
//                    selectedTab = "1"
//                }
//                .tag("2")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
