//
//  SelectStyle.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 11/04/23.
//

import SwiftUI

struct SelectStyle: View {
    @Binding var isSelectedStyle:Bool
    @State var imgStyle:String
    @State var textStyle:String
    @State var opacityStyle:Double
    @State var overlayStyle:String
    var body: some View {
        VStack{
            Image(imgStyle)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 100)
                .clipped()
                .cornerRadius(10)
                .shadow(radius: 5, x: 0, y:2)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .opacity(isSelectedStyle ? opacityStyle : 0.0)
                )
                .overlay(
                    Image(systemName: isSelectedStyle ? overlayStyle : "")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                    
                )
            Text(textStyle)
        }
    }
}

struct SelectStyle_Previews: PreviewProvider {
    static var previews: some View {
        SelectStyle(isSelectedStyle: .constant(false), imgStyle: "imgCasual", textStyle: "Casual", opacityStyle: 0.0, overlayStyle: "")
    }
}
