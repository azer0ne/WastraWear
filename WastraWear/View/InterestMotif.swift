//
//  Interest Motif.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 06/04/23.
//

import SwiftUI

struct InterestMotif: View {
    @State private var selectedMotif1 = false
    @State private var selectedMotif2 = false
    @State private var selectedMotif3 = false
    @State private var selectedMotif4 = false
    @State private var selectedMotif5 = false
    @State private var selectedMotif6 = false
    @State private var showStyleView = false
    
    func navigateToStyle() {
        self.showStyleView = true
    }
    
    var body: some View {
        
        VStack {
            Text("Pilih 3 motif batik yang kamu sukai")
                .font(.title3)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, maxHeight: 70, alignment: .top)
            Grid(alignment: .center){
                GridRow {
                    SelectMotif(
                        isSelectedMotif: $selectedMotif1,
                        imgMotif: "Banten",
                        textMotif: "Batik Banten",
                        opacityMotif: 0.4,
                        overlayMotif: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedMotif1.toggle()
                    }
                    SelectMotif(
                        isSelectedMotif: $selectedMotif2,
                        imgMotif: "Cirebon",
                        textMotif: "Batik Cirebon",
                        opacityMotif: 0.4,
                        overlayMotif: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedMotif2.toggle()
                    }
                }
                
                GridRow {
                    SelectMotif(
                        isSelectedMotif: $selectedMotif3,
                        imgMotif: "Madura",
                        textMotif: "Batik Madura",
                        opacityMotif: 0.4,
                        overlayMotif: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedMotif3.toggle()
                    }
                    SelectMotif(
                        isSelectedMotif: $selectedMotif4,
                        imgMotif: "Pekalongan",
                        textMotif: "Batik Pekalongan",
                        opacityMotif: 0.4,
                        overlayMotif: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedMotif4.toggle()
                    }
                }
                GridRow {
                    SelectMotif(
                        isSelectedMotif: $selectedMotif5,
                        imgMotif: "Solo",
                        textMotif: "Batik Solo",
                        opacityMotif: 0.4,
                        overlayMotif: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedMotif5.toggle()
                    }
                    SelectMotif(
                        isSelectedMotif: $selectedMotif6,
                        imgMotif: "Yogyakarta",
                        textMotif: "Batik Yogyakarta",
                        opacityMotif: 0.4,
                        overlayMotif: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedMotif6.toggle()
                    }
                }
            }
            .padding(.horizontal, 30)
            Spacer()
            Button(action: { navigateToStyle() })
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
        .fullScreenCover(isPresented: $showStyleView, content: {
            InterestStyle()
        })
    }
}

struct InterestMotif_Previews: PreviewProvider {
    static var previews: some View {
        InterestMotif()
    }
}
