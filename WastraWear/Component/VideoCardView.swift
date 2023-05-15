//
//  PersonCardView.swift
//  testing1
//
//  Created by Jason Susanto on 31/03/23.
//

import SwiftUI

struct VideoCardView: View {
    let video: Video
    
    var body: some View {
        VStack {
            ZStack{
                Image(video.vidThumbnail)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 150)
                    .clipped()
                
                Image(systemName: "play.fill")
                    .foregroundColor(.black.opacity(0.6))
                    .font(.title2)
                    .padding()
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(50)
            }
            VStack{
                Text(video.judulVideo)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.5137254901960784, green: 0.08235294117647059, blue: 0.0784313725490196))
//                    .shadow(color: .black, radius: 4, x: 0, y: 2 )
//                    .frame(maxWidth: 340 ,alignment: .leading)
                    .frame(width: 350, height: 30, alignment: .topLeading)
            }
//            .background(Color(.orange))
        }
        .background(Color(red: 0.9725490196078431, green: 0.9490196078431372, blue: 0.8941176470588236)
            .opacity(0.9))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("AccentColor"), lineWidth: 2)
        )
    }
}

struct VideoCardView_Previews: PreviewProvider {
    static var previews: some View {
     //   GeometryReader { geometry in
        VideoCardView(video: Video(vidThumbnail: "thumbanail1", vidSrc: "vid_1", judulVideo: "Lilit Kain Lurik Sapit Urang", descVideo: "**Motif Sapit Urang** yang berarti jepit udang adalah ungkapan simbolis suatu siasat perang, yaitu musuh dikelilingi atau dikepung dari samping dengan kekuatan komando serangan berpusat di tengah. Saat ini motif sapit urang populer, terutama di kawasan **Daerah Istimewa Yogyakarta.**"))
     //   }
    }
}
