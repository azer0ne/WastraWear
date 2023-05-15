//
//  SelectButton.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 10/04/23.
//

import SwiftUI

struct SelectGender: View {
    @Binding var isSelected:Bool
    @State var colorGender:Color
    @State var iconGender:String
    @State var textGender:String
    @State var textColor:Color
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .cornerRadius(10)
                .foregroundColor(isSelected ? colorGender: .white)
                .frame(width: 120, height: 120)
            Text(iconGender)
                .padding(.top, 20)
                .frame(width: 120, height: 120)
                .font(.system(size: 100))
            Text(textGender)
                .padding(.top, 3)
                .font(.body)
                .foregroundColor(isSelected ? textColor: .black)
                .frame(width: 120, height: 120, alignment: .top)
                .bold()
        }
        .frame(width: 120, height: 120)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("AccentColor"), lineWidth: 2)
        )
    }
}

struct SelectGender_Previews: PreviewProvider {
    static var previews: some View {
        SelectGender(isSelected: .constant(false), colorGender: .white, iconGender: "🙋🏻‍♂️", textGender: "Pria", textColor: .black)
    }
}
