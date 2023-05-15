//
//  SelectWarna.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 11/04/23.
//

import SwiftUI

struct SelectWarna: View {
    @Binding var isSelectedWarna:Bool
    @State var imgWarna:Color
    @State var textWarna:String
    @State var opacityWarna:Double
    @State var overlayWarna:String
    var body: some View {
        VStack{
                Rectangle()
                    .scaledToFill()
                    .frame(width: 120, height: 90)
                    .clipped()
                    .cornerRadius(10)
                    .foregroundColor(imgWarna)
                    .shadow(radius: 5, x: 0, y:2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                            .opacity(isSelectedWarna ? opacityWarna : 0.0)
                    )
                    .overlay(
                        Image(systemName: isSelectedWarna ? overlayWarna : "")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                    )
                Text(textWarna)
        }
    }
}

struct SelectWarna_Previews: PreviewProvider {
    static var previews: some View {
        SelectWarna(isSelectedWarna: .constant(false), imgWarna: .blue, textWarna: "Biru", opacityWarna: 0.0, overlayWarna: "")
    }
}
