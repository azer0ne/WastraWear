//
//  PhotoSearch.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 05/04/23.
//

import SwiftUI

struct PhotoSearch: View {
    
    @State var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            
            TextField("Search", text: $searchText)
            Image(systemName: "line.3.horizontal.decrease.circle")
                .foregroundColor(.secondary)
        }
        .frame(width: .infinity)
        .padding(10)
        .background(Color(red: 0.8980392156862745, green: 0.8980392156862745, blue: 0.8980392156862745))
        .cornerRadius(10)
//        .padding(10)
    }
}

struct PhotoSearch_Previews: PreviewProvider {
    static var previews: some View {
        PhotoSearch(searchText: "")
    }
}
