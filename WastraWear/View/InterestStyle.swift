//
//  Interest Style.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 08/04/23.
//

import SwiftUI

struct InterestStyle: View {
    @State private var selectedStyle1 = false
    @State private var selectedStyle2 = false
    @State private var selectedStyle3 = false
    @State private var selectedStyle4 = false
    @State private var selectedStyle5 = false
    @State private var selectedStyle6 = false
    @State private var showWarnaView = false
    
    func navigateToWarna() {
        self.showWarnaView = true
    }
    
    var body: some View {
        
            VStack {
                Text("Pilih 3 gaya untuk menyesuaikan \nberandamu")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, maxHeight: 70, alignment: .top)
                Grid(alignment: .center){
                    GridRow {
                        SelectStyle(
                            isSelectedStyle: $selectedStyle1,
                            imgStyle: "imgCasual",
                            textStyle: "Casual",
                            opacityStyle: 0.4,
                            overlayStyle: "checkmark.circle.fill"
                        )
                        .onTapGesture {
                            selectedStyle1.toggle()
                            }
                        SelectStyle(
                            isSelectedStyle: $selectedStyle2,
                            imgStyle: "imgChic",
                            textStyle: "Chic",
                            opacityStyle: 0.4,
                            overlayStyle: "checkmark.circle.fill"
                        )
                        .onTapGesture {
                            selectedStyle2.toggle()
                            }
                    }
                    
                    GridRow {
                        SelectStyle(
                            isSelectedStyle: $selectedStyle3,
                            imgStyle: "imgFormal",
                            textStyle: "Formal",
                            opacityStyle: 0.4,
                            overlayStyle: "checkmark.circle.fill"
                        )
                        .onTapGesture {
                            selectedStyle3.toggle()
                            }
                        SelectStyle(
                            isSelectedStyle: $selectedStyle4,
                            imgStyle: "imgSmartCasual",
                            textStyle: "Smart Casual",
                            opacityStyle: 0.4,
                            overlayStyle: "checkmark.circle.fill"
                        )
                        .onTapGesture {
                            selectedStyle4.toggle()
                            }
                    }
                    GridRow {
                        SelectStyle(
                            isSelectedStyle: $selectedStyle5,
                            imgStyle: "imgSporty",
                            textStyle: "Sporty",
                            opacityStyle: 0.4,
                            overlayStyle: "checkmark.circle.fill"
                        )
                        .onTapGesture {
                            selectedStyle5.toggle()
                            }
                        SelectStyle(
                            isSelectedStyle: $selectedStyle6,
                            imgStyle: "imgStreet",
                            textStyle: "Street Style",
                            opacityStyle: 0.4,
                            overlayStyle: "checkmark.circle.fill"
                        )
                        .onTapGesture {
                            selectedStyle6.toggle()
                            }
                    }
                }
                .padding(.horizontal, 30)
                Spacer()
                Button(action: { navigateToWarna() })
                {
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
            .fullScreenCover(isPresented: $showWarnaView, content: {
                InterestWarna()
            })
    }
}

struct InterestStyle_Previews: PreviewProvider {
    static var previews: some View {
        InterestStyle()
    }
}
