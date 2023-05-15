//
//  SelectMotif.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 11/04/23.
//

import SwiftUI

struct SelectMotif: View {
    @Binding var isSelectedMotif:Bool
    @State var imgMotif:String
    @State var textMotif:String
    @State var opacityMotif:Double
    @State var overlayMotif:String
    var body: some View {
        VStack{
            Image(imgMotif)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 100)
                .clipped()
                .cornerRadius(10)
                .shadow(radius: 5, x: 0, y:2)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .opacity(isSelectedMotif ? opacityMotif : 0.0)
                )
                .overlay(
                    Image(systemName: isSelectedMotif ? overlayMotif : "")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                    
                )
            Text(textMotif)
        }
    }
}

struct SelectMotif_Previews: PreviewProvider {
    static var previews: some View {
        SelectMotif(isSelectedMotif: .constant(false), imgMotif: "Banten", textMotif: "Batik Banten", opacityMotif: 0.0, overlayMotif: "")
    }
}
