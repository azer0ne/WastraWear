//
//  Tag.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 06/04/23.
//

import Foundation

//struct Tag: Identifiable {
//    var id = UUID()
//    var tagName: String
//}

enum Tag: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    
    case batikPekalongan = "Batik Pekalongan"
    case batikSolo = "Batik Solo"
    case batikBanten = "Batik Banten"
    case batikYogyakarta = "Batik Yogyakarta"
    case batikMadura = "Batik Madura"
    case batikCirebon = "Batik Cirebon"
}
