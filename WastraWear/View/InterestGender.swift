//
//  InterestGender.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 08/04/23.
//

import SwiftUI

struct InterestGender: View {
    
    @State private var selectedPria = false
    @State private var selectedWanita = false
    @State private var showAlert = false
    @State private var alertText = ""
    @State private var showMotifView = false
    
    func navigateToMotif() {
        self.showMotifView = true
    }
    
    var body: some View {
        VStack {
            Text("Apakah kamu seorang \nPria atau Wanita?")
                .font(.title3)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, maxHeight: 70, alignment: .top)
                .padding(.bottom, 20)
            Grid(alignment: .center) {
                SelectGender(
                    isSelected: $selectedPria,
                    colorGender: .accentColor,
                    iconGender: "🙋🏻‍♂️",
                    textGender: "Pria",
                    textColor: .white
                )
                .onTapGesture {
                    selectedPria.toggle()
                    if selectedPria {
                        selectedWanita = false
                    }
                }
                .padding(.bottom, 20)
                SelectGender(
                    isSelected: $selectedWanita,
                    colorGender: .accentColor,
                    iconGender: "🙋🏻‍♀️",
                    textGender: "Wanita",
                    textColor: .white
                )
                .onTapGesture {
                    selectedWanita.toggle()
                    if selectedWanita {
                        selectedPria = false
                    }
                }
            }
            .padding(.horizontal, 30)
            Spacer()
            Button(action: { navigateToMotif() })
            {
//                    alertText = selectedPria ? "Gender Pria" : "Gender Wanita"
//                    showAlert.toggle()
//                    print(alertText)
                Text("Selanjutnya")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.vertical, 8)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .background(Color("AccentColor"))
            .cornerRadius(10)
            .padding(.bottom, 20)
            }
        .padding(20)
        .fullScreenCover(isPresented: $showMotifView, content: {
            InterestMotif()
        
            
        })
    }
}

struct InterestGender_Previews: PreviewProvider {
    static var previews: some View {
        InterestGender()
    }
}
