//
//  Video.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 03/04/23.
//

import Foundation
import AVFoundation

struct Video : Identifiable {
    var id = UUID()
    var vidThumbnail: String
    var vidSrc:String
    var judulVideo: String
    var descVideo: String
}

extension Video{
    static let allV: [Video] = [
        Video(vidThumbnail: "thumbnail1",
              vidSrc: "vid_1",
              //              player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "vid_1", ofType: "mp4")!)),
              judulVideo: "Lilit Kain Lurik Sapit Urang",
              descVideo: "**Motif Sapit Urang** yang berarti jepit udang adalah ungkapan simbolis suatu siasat perang, yaitu musuh dikelilingi atau dikepung dari samping dengan kekuatan komando serangan berpusat di tengah. Saat ini motif sapit urang populer, terutama di kawasan **Daerah Istimewa Yogyakarta.**"),
        Video(vidThumbnail: "thumbnail2",
              vidSrc: "vid_2",
              //              player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "vid_2", ofType: "mp4")!)),
              judulVideo: "Tutorial Memakai Kain Batik Parang",
              descVideo: "Batik Parang merupakan salah satu motif **tertua** di Indonesia yang banyak ditemukan di daerah **Solo dan Yogyakarta.** Nama “Parang” berasal dari kata “Pereng” yang artinya lereng. \n\nBatik parang lereng memiliki makna tidak mudah menyerah yang dapat dilihat dari motifnya yang **menyerupai ombak laut yang tidak berhenti bergerak.**"),
        Video(vidThumbnail: "thumbnail3",
              vidSrc: "vid_3",
              //              player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "vid_3", ofType: "mp4")!)),
              judulVideo: "Lilit Simple Kain Motif Kawung",
              descVideo: "Batik Kawung mencerminkan makna dari **kesucian, kemurnian, dan kesempurnaan.** Motif pada Batik Kawung terinspirasi dari sebuah kumbang dengan nama latin **Oryctes Rhinoceros** atau dalam bahasa Jawa lebih dikenal dengan nama **Kumbang Kwangwung.** \n\nBatik Kawung terbagi atas beberapa pola, salah satunya disebut dengan Batik **Kawung Semar** yang terdiri dari pola utama berbentuk empat bulatan lonjong dengan ukuran besar yang menyerupai biji buah nangka dan dipadukan dengan pola bulatan lonjong berukuran lebih kecil pada bagian dalam."),
        Video(vidThumbnail: "thumbnail4",
              vidSrc: "vid_4",
              //              player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "vid_4", ofType: "mp4")!)),
              judulVideo: "Cara Mudah Melilit Kain Batik",
              descVideo: "Terdapat berbagai macam Kain Batik yang berasal dari Daerah Istimewa Yogyakarta, salah satunya adalah Kain Batik yang memiliki motif **Sidomukti Garuda.** \n\nMotif batik Sidomukti Garuda adalah gabungan antara **unsur burung garuda dan unsur tumbuhan.** Di mana, unsur tumbuhan terutama bunga memiliki makna mendalam yang melambangkan kecantikan dan sumber kehidupan. Sedangkan unsur garuda yang dalam bahasa Jawa disebut dengan **“Lar”** melambangkan kegagahan dan kewibawaan sehingga sering dipakai untuk motif-motif batik.")
    ]
}
