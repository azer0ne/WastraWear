//
//  PhotosGrid.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 11/04/23.
//

import SwiftUI

struct PhotosGrid: View {
    var photos: Photo
    var body: some View {
        Image(photos.imgSrc)
            .resizable()
            .scaledToFill()
            .frame(width: (UIScreen.main.bounds.size.width / 3) - 1, height: (UIScreen.main.bounds.size.width / 3) - 1
            )
            .clipped()
    }
}

struct PhotosGrid_Previews: PreviewProvider {
    static var previews: some View {
        PhotosGrid(photos: Photo(judulFoto: "Bergaya dengan Jumputan Motif Cengkeh", descFoto:"Tidak seperti pada batik lainnya yang dibuat dengan menggunakan malam ataupun dicap, Batik Jumputan merupakan batik yang diberi corak tertentu dengan menggunakan **alat sejenis pengikat dan biji-bijian.** \n\nMotif dari Batik Jumputan memiliki variasi yang unik karena terpengaruh dari teknik pembuatannya. Salah satu motif Batik Jumputan yang umum ditemui adalah **Motif Cengkeh** yang dibuat dengan mengikat beberapa bagian pada kain.", imgSrc: "img_1", tags: "Batik Pekalongan"))
    }
}
