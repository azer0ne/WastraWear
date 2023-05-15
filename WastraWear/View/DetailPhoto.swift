//
//  DetailInspirationPhoto.swift
//  WastraWear
//
//  Created by Muthia Shafina on 11/04/23.
//

import SwiftUI

struct DetailPhoto: View {
    @Environment(\.managedObjectContext) var moc
    var imgs: Photo

//    func bookmarkSave() {
//        let newBook = BookmarkPhotoEntity(context: moc)
//        newBook.id = UUID()
//        newBook.judulFoto = Date()
//        newBook.descFoto = calculateBmi()
//        newBook.imgSrc = descriptionBmi()
//
//        try? moc.save()
//    }
    
    var body: some View {
        ScrollView(.vertical){
            VStack{
                ZStack(alignment: .topTrailing){
                    Image(imgs.imgSrc)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                    VStack {
                        Button(action: { })
                        {
                            Image(systemName: "square.and.arrow.up")
                                .aspectRatio(contentMode: .fill)
                                .font(.title2)
                                .frame(width: 45, height: 45)
                                .foregroundColor(Color("WastraColor"))
                                .background(Color(red: 0.9725490196078431, green: 0.9490196078431372, blue: 0.8941176470588236))
                                .clipShape(Circle())
                        }
                        .buttonStyle(.plain)
                        .padding(15)
                        .padding(.bottom, -10)
                        Button(action: { })
                        {
                            Image(systemName: "bookmark")
                                .aspectRatio(contentMode: .fill)
                                .font(.title2)
                                .frame(width: 45, height: 45)
                                .foregroundColor(Color("WastraColor"))
                                .background(Color(red: 0.9725490196078431, green: 0.9490196078431372, blue: 0.8941176470588236))
                                .clipShape(Circle())
                        }
                        .buttonStyle(.plain)
                    }
                }
                Text(imgs.judulFoto)
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(15)
                Text(.init(imgs.descFoto))
                    .font(.system(size: 22))
                    .padding(.horizontal, 15)
            
                HStack{
                    Text("Batik Yogyakarta")
                        .font(.caption)
                        .bold()
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding(7)
                        .foregroundColor(Color("WastraColor"))
                        .background(Color(red: 0.972, green: 0.949, blue: 0.892))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color("WastraColor"), lineWidth: 1)
                        )
                    Text("Casual")
                        .font(.caption)
                        .bold()
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding(7)
                        .foregroundColor(Color("WastraColor"))
                        .background(Color(red: 0.972, green: 0.949, blue: 0.892))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color("WastraColor"), lineWidth: 1)
                        )
                    Spacer()
                }
                .padding(15)
            }        
        }
    }
}
    
    struct DetailPhoto_Previews: PreviewProvider {
        static var previews: some View {
            DetailPhoto(imgs: Photo(judulFoto: "Bergaya dengan Jumputan Motif Cengkeh", descFoto:"Tidak seperti pada batik lainnya yang dibuat dengan menggunakan malam ataupun dicap, Batik Jumputan merupakan batik yang diberi corak tertentu dengan menggunakan **alat sejenis pengikat dan biji-bijian.** \n\nMotif dari Batik Jumputan memiliki variasi yang unik karena terpengaruh dari teknik pembuatannya. Salah satu motif Batik Jumputan yang umum ditemui adalah **Motif Cengkeh** yang dibuat dengan mengikat beberapa bagian pada kain.", imgSrc: "img_1", tags: "Batik Pekalongan"))
        }
    }

