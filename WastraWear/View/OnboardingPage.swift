//
//  OnboardingPage.swift
//  WastraWear
//
//  Created by Muthia Shafina on 06/04/23.
//

import SwiftUI

struct OnboardingPage: View {
    
    @State private var showGenderView = false
    
    func navigateToGender() {
        self.showGenderView = true
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("WastraWear")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 150, alignment: .center)
                    .padding(.top)
                Text("Temukan inspirasi berkain berdasarkan preferensimu!")
                    .font(.headline)
                    .italic()
                    .multilineTextAlignment(.center)
                    .frame(maxWidth : .infinity, alignment: .center)
                    .foregroundColor(Color(red: 0.512, green: 0.081, blue: 0.08))
                    .padding()
//                Text("Mulai Eksplor")
//                    .bold()
//                    .frame(width: 200, height: 50, alignment: .center)
//                    .background(Color(red: 0.512, green: 0.081, blue: 0.08))
//                    .foregroundColor(Color(red: 0.972, green: 0.949, blue: 0.892))
//                    .cornerRadius(12)
//                    .shadow(radius: 5)
                    Spacer()
                Button(action: { navigateToGender()}) {
                    Text("Mulai Ekspor")
                        .foregroundColor(.white)
                        .bold()
                        .padding(.vertical, 8)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)
                .background(Color("AccentColor"))
                .cornerRadius(10)
            }
            .navigationBarTitle("Selamat datang di WastraWear", displayMode: .inline)
            .padding(20)
            .background(Color(red: 0.972, green: 0.949, blue: 0.892))
            .fullScreenCover(isPresented: $showGenderView, content: {
                InterestGender()
            
                
            })
        }
    }
}

struct OnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage()
    }
}
