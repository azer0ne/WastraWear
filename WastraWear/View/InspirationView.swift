//
//  InspirationView.swift
//  WastraWear
//
//  Created by Jason Susanto on 05/04/23.
//

import SwiftUI

struct InspirationView: View {
    
    @State var selectedTab = Tabs.FirstTab
    @State var isSelected = true
    @State var isHide = false
    @State var searchText: String
    @State var isShowingPhotos = false
    @State var isShowingTutorial = false
    
    enum Tabs {
        case FirstTab
        case SecondTab
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0){
                
                VStack(spacing: 0) {
                    
                    if isHide{
                        HStack(spacing: 10) {
                            Text("WastraWear")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(.accentColor)
                        }
                        .padding()
                        
                        PhotoSearch(searchText: searchText)
                            .padding(.horizontal, 15)
                    }
                    
                    HStack {
                        
                        Spacer()
                        
                        VStack {
                            Text("Photos")
                        }
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(isSelected ? .accentColor : Color(red: 117/255, green: 117/255, blue: 117/255))
                        .padding(.vertical, 3)
                        .scaleEffect(isSelected ? 1.1 : 1.0)
                        .overlay(
                            // Add rectangle with same width as text
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(isSelected ? .accentColor : Color.clear)
                                .padding(.top, 28)
                        )
                        .onTapGesture {
                            self.selectedTab = .FirstTab
                            self.isSelected = true
                        }
                        
                        Spacer().frame(width: 30)
                        
                        VStack {
                            Text("Tutorial")
                        }
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(isSelected ? Color(red: 117/255, green: 117/255, blue: 117/255) : .accentColor)
                        .padding(.vertical, 3)
                        .scaleEffect(isSelected ? 1.0 : 1.1) // reverse scale
                        .overlay(
                            // Add rectangle with same width as text
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(!isSelected ? .accentColor : Color.clear)
                                .padding(.top, 28)
                        )
                        .onTapGesture {
                            self.selectedTab = .SecondTab
                            self.isSelected = false
                        }
                        Spacer()
                        
                    }
                    .padding(15)
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 0){
                            GeometryReader{reader -> AnyView in
                                
                                let yAxis = reader.frame(in: .global).minY
                                
                                //                            print(yAxis)
                                
                                if yAxis > 0 && !isHide
                                {
                                    DispatchQueue.main.async {
                                        withAnimation{isHide = true}
                                    }
                                }
                                
                                if yAxis < 0 && isHide
                                {
                                    DispatchQueue.main.async {
                                        withAnimation{isHide = false}
                                    }
                                }
                                return AnyView(
                                    Text("")
                                        .frame(width: 0, height: 0)
                                )
                            }.frame(width: 0, height: 0)
                            VStack{
                                if selectedTab == .FirstTab {
                                    FirstTabView()
                                } else if selectedTab == .SecondTab {
                                    SecondTabView()
                                }
                            }
                        }
                    }
                    .ignoresSafeArea()
                }
            }
        }
    }
}

struct FirstTabView : View {
    
    var body : some View {
        PhotoView(photos: Photo.all)
//        Text("hai")
    }
}

struct SecondTabView : View {
    
    var body : some View {
        VideoView(videos: Video.allV)
    }
}

struct InspirationView_Previews: PreviewProvider {
    static var previews: some View {
        InspirationView(searchText: "")
    }
}
