//
//  BookmarkPhotoItem.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 06/04/23.
//

import SwiftUI

struct BookmarkPhotoItem: View {
    
    var bookmarkPhoto: BookmarkPhotoEntity

    var body: some View {
        Image(bookmarkPhoto.imgSrc ?? "No Image")
            .resizable()
            .scaledToFill()
            .frame(width: (UIScreen.main.bounds.size.width / 3) - 1, height: (UIScreen.main.bounds.size.width / 3) - 1
            )
            .clipped()
    }
}

//struct BookmarkPhotoItem_Previews: PreviewProvider {
//    static var previews: some View {
//        BookmarkPhotoItem(bookmarkPhoto: <#BookmarkPhotoEntity#>)
//    }
//}
