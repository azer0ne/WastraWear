//
//  BookmarkPhotoView.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 05/04/23.
//

import SwiftUI

struct BookmarkPhotoGrid: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var savedPhoto: FetchedResults<BookmarkPhotoEntity>
    
    let bookmark: [Photo]
    
    private let columnPhoto = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        LazyVGrid(columns: columnPhoto, spacing: 1) {
            
            ForEach(savedPhoto) {image in
                BookmarkPhotoItem(bookmarkPhoto: image)
            }
        }
    }
}

struct BookmarkPhotoGrid_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkPhotoGrid(bookmark: MockData().photos)
    }
}
