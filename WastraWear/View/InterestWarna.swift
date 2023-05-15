//
//  InterestWarna.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 08/04/23.
//

import SwiftUI

struct InterestWarna: View {
    @State private var selectedWarna1 = false
    @State private var selectedWarna2 = false
    @State private var selectedWarna3 = false
    @State private var selectedWarna4 = false
    @State private var selectedWarna5 = false
    @State private var selectedWarna6 = false
    @State private var selectedWarna7 = false
    @State private var selectedWarna8 = false
    @State private var showContentView = false
    
    func navigateToContent() {
        self.showContentView = true
    }
    
    var body: some View {
        
        VStack {
            Text("Pilih 3 warna yang kamu sukai")
                .font(.title3)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, maxHeight: 70, alignment: .top)
            
            //Buat grid vertical
            Grid(alignment: .center){
                //Kolom pertama
                GridRow {
                    SelectWarna(
                        isSelectedWarna: $selectedWarna1,
                        imgWarna: .blue,
                        textWarna: "Biru",
                        opacityWarna: 0.4,
                        overlayWarna: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedWarna1.toggle()
                    }
                    SelectWarna(
                        isSelectedWarna: $selectedWarna2,
                        imgWarna: Color(red: 0.4117647058823529, green: 0.2549019607843137, blue: 0.0),
                        textWarna: "Coklat",
                        opacityWarna: 0.4,
                        overlayWarna: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedWarna2.toggle()
                    }
                }
                //Kolom kedua
                GridRow {
                    SelectWarna(
                        isSelectedWarna: $selectedWarna3,
                        imgWarna: .black,
                        textWarna: "Hitam",
                        opacityWarna: 0.4,
                        overlayWarna: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedWarna3.toggle()
                    }
                    SelectWarna(
                        isSelectedWarna: $selectedWarna4,
                        imgWarna: .yellow,
                        textWarna: "Kuning",
                        opacityWarna: 0.4,
                        overlayWarna: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedWarna4.toggle()
                    }
                }
                GridRow {
                    SelectWarna(
                        isSelectedWarna: $selectedWarna5,
                        imgWarna: .red,
                        textWarna: "Merah",
                        opacityWarna: 0.4,
                        overlayWarna: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedWarna5.toggle()
                    }
                    SelectWarna(
                        isSelectedWarna: $selectedWarna6,
                        imgWarna: .orange,
                        textWarna: "Oranye",
                        opacityWarna: 0.4,
                        overlayWarna: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedWarna6.toggle()
                    }
                }
                GridRow {
                    SelectWarna(
                        isSelectedWarna: $selectedWarna7,
                        imgWarna: .white,
                        textWarna: "Putih",
                        opacityWarna: 0.4,
                        overlayWarna: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedWarna7.toggle()
                    }
                    SelectWarna(
                        isSelectedWarna: $selectedWarna8,
                        imgWarna: .purple,
                        textWarna: "Ungu",
                        opacityWarna: 0.4,
                        overlayWarna: "checkmark.circle.fill"
                    )
                    .onTapGesture {
                        selectedWarna8.toggle()
                    }
                }
            }
            .padding(.horizontal, 30)
            
            Spacer()
            Button(action: { navigateToContent() })
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
        .fullScreenCover(isPresented: $showContentView, content: {
            ContentView()
        })
    }
}

struct InterestWarna_Previews: PreviewProvider {
    static var previews: some View {
        InterestWarna()
    }
}
