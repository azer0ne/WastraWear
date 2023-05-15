//
//  cardView.swift
//  WastraWear
//
//  Created by Jason Susanto on 31/03/23.
//

import SwiftUI

struct VideoView: View {
    
    @State private var searchText = ""
    var videos: [Video]
    
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(videos) { video in
                    NavigationLink(destination: DetailVideo(vids: video), label: {
                        VideoCardView(video: video)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 5)
                    })
                    }
                }
            }
            .foregroundColor(.white)
        }
//        NavigationView {
//            List(videos) {index in
//                Text("Test")
//                VideoCardView(video: index)
//                    .listRowInsets(EdgeInsets())
//                    .padding(.horizontal, 10)
//                    .padding(.bottom, 14)
//                    .background(
//                        NavigationLink(
//                        destination: DetailVideo(),
//                        label: { EmptyView() })
//                    )
//                    .foregroundColor(.white)
//                    .listRowSeparator(.hidden)
//            }
//            .listStyle(.plain)
//        }
    }
//}


struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(videos: MockData().videos)
    }
}

