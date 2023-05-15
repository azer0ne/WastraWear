//
//  TutorVideo.swift
//  WastraWear
//
//  Created by Devi Azzahara on 11/04/23.
//
import SwiftUI
import AVKit

struct DetailVideo: View {
    var vids: Video
    @State var url = Bundle.main.url(forResource: "vid_1", withExtension: "mp4")!

    var body: some View {
        ScrollView(.vertical){
            VStack{
                ZStack(alignment: .topTrailing){
                    VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: vids.vidSrc, withExtension: "mp4")!))
                        .scaledToFit()

//                    Image(vids.player)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(maxWidth: .infinity)
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
                Text(vids.judulVideo)
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(15)
                Text(.init(vids.descVideo))
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
                    Spacer()
                }
                .padding(15)
            }
        }
    }
}
    
    struct DetailVideo_Previews: PreviewProvider {
        static var previews: some View {
            DetailVideo(vids: Video(vidThumbnail: "thumbnail1", vidSrc: "vid_1", judulVideo: "Lilit Kain Lurik Sapit Urang", descVideo: "**Motif Sapit Urang** yang berarti jepit udang adalah ungkapan simbolis suatu siasat perang, yaitu musuh dikelilingi atau dikepung dari samping dengan kekuatan komando serangan berpusat di tengah. Saat ini motif sapit urang populer, terutama di kawasan **Daerah Istimewa Yogyakarta.**"))
        }
    }

