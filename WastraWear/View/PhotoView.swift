//
//  HomePage.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 31/03/23.
//

import SwiftUI

struct PhotoView: View {
    //    @State var searchText: String
    var photos: [Photo]
    var columnGrid: [GridItem] = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columnGrid, spacing: 1) {
                ForEach(photos) {photo in
                    NavigationLink(destination: DetailPhoto(imgs: photo)) {
                        PhotosGrid(photos: photo)
                    }
                }
            }
        }
    }
}
    
    struct PhotoView_Previews: PreviewProvider {
        static var previews: some View {
            PhotoView(photos: MockData().photos)
        }
    }
