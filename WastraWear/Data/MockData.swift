//
//  Person.swift
//  testing1
//
//  Created by Jason Susanto on 31/03/23.
//

import Foundation
import AVFoundation

var judul = ["Tutorial Batik Parang Solo", "Tutorial Berkain Wanita", "Tutorial Batik Yogyakarta", "Tutorial Berkain Pria", "Tutorial Memakai Hijab Batik", "Tutorial Memakai Batik Bali", "Tutorial Memakai Batik Betawi", "Tutorial Memakai Batik Palembang", "Tutorial Memakai Batik Purnama", "Tutorial Memakai Kain Tenun"]

var header = ["headerImage1", "headerImage2", "headerImage3", "headerImage4", "headerImage5", "headerImage6", "headerImage7", "headerImage8", "headerImage9", "headerImage10"]

let bold = "Motif Cengkeh"
struct MockData {
    
//    let tags: [Tag] = [
//        Tag(tagName: "Pria"),
//        Tag(tagName: "Wanita"),
//        Tag(tagName: "Batik Banten"),
//        Tag(tagName: "Batik Cirebon"),
//        Tag(tagName: "Batik Madura"),
//        Tag(tagName: "Batik Pekalongan"),
//        Tag(tagName: "Batik Solo"),
//        Tag(tagName: "Batik Yogyakarta"),
//        Tag(tagName: "Casual"),
//        Tag(tagName: "Chic"),
//        Tag(tagName: "Formal"),
//        Tag(tagName: "Smart Casual"),
//        Tag(tagName: "Sporty"),
//        Tag(tagName: "Street Style"),
//        Tag(tagName: "⚫️Hitam"),
//        Tag(tagName: "🔵Biru"),
//        Tag(tagName: "🔴Merah"),
//        Tag(tagName: "🟡Kuning"),
//        Tag(tagName: "🟣Ungu"),
//        Tag(tagName: "⚪️Putih"),
//        Tag(tagName: "🟤Coklat"),
//        Tag(tagName: "🟠Oranye")
//    ]
    
    let videos: [Video] = [
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

    let photos: [Photo] = [
        Photo(judulFoto: "Bergaya dengan Jumputan Motif Cengkeh",
              descFoto: "Tidak seperti pada batik lainnya yang dibuat dengan menggunakan malam ataupun dicap, Batik Jumputan merupakan batik yang diberi corak tertentu dengan menggunakan **alat sejenis pengikat dan biji-bijian.** \n\nMotif dari Batik Jumputan memiliki variasi yang unik karena terpengaruh dari teknik pembuatannya. Salah satu motif Batik Jumputan yang umum ditemui adalah **Motif Cengkeh** yang dibuat dengan mengikat beberapa bagian pada kain.",
              imgSrc: "img_1",
             tags: "Batik Pekalongan"),
        Photo(judulFoto: "Cowo Mamba Berkain Batik Parang",
              descFoto: "Batik Parang merupakan salah satu motif **tertua** di Indonesia yang banyak ditemukan di daerah **Solo dan Yogyakarta**. Nama “Parang” berasal dari kata “Pereng” yang artinya lereng. \n\nBatik parang lereng memiliki makna tidak mudah menyerah yang dapat dilihat dari motifnya yang **menyerupai ombak laut yang tidak berhenti bergerak.**",
              imgSrc: "img_2", tags: "Batik Solo"),
        Photo(judulFoto: "Gaya Casual dengan Batik Kawung",
              descFoto: "Batik Kawung mencerminkan makna dari **kesucian, kemurnian, dan kesempurnaan.** Motif pada Batik Kawung terinspirasi dari sebuah kumbang dengan nama latin **Oryctes Rhinoceros** atau dalam bahasa Jawa lebih dikenal dengan nama **Kumbang Kwangwung**. \n\nBatik Kawung terbagi atas beberapa pola, salah satunya disebut dengan **Batik Kawung Semar** yang terdiri dari pola utama berbentuk empat bulatan lonjong dengan ukuran besar yang menyerupai biji buah nangka dan dipadukan dengan pola bulatan lonjong berukuran lebih kecil pada bagian dalam.",
              imgSrc: "img_3", tags: "Batik Cirebon"),
        Photo(judulFoto: "Berkain dengan Batik Tumpal",
              descFoto: "Batik Tumpal mempunyai bentuk dasar **segitiga sama kaki.** Motif tumpal ini merupakan hasil inspirasi dari budaya India. \n\nMakna filosofi motif tumpal oleh masyarakat pendukungnya digunakan sebagai **penolak bala**, karena gambar segitiga runcing yang dilambangkan sebagai gigi buaya.",
              imgSrc: "img_4", tags: "Batik Madura"),
        Photo(judulFoto: "OOTD Cantik menggunakan Batik Lasem",
              descFoto: "Batik Lasem merupakan salah satu jenis kain batik pesisiran yang merupakan **hasil silang budaya** dari batik lokal yang diilhami oleh ide batik keraton dan serapan unsur-unsur budaya asing. Motif dari Batik Lasem tentunya beragam dan salah satunya adalah motif **Kricak (Watu Pecah)** atau dalam bahasa Indonesia disebut dengan motif batu pecah. \n\nMotif ini berasal dari sejarah pada masa **Gubernur Jenderal Herman Willem Daendels** abad ke-18, di mana pada saat itu masyarakat Lasem harus menjadi buruh yang tidak dibayar. Buruh tersebut diharuskan memecah batu menjadi Kricak sebagai **bahan pengeras jalan.**",
              imgSrc: "img_5", tags: "Batik Banten"),
        Photo(judulFoto: "Menampilkan Gaya Casual dengan Batik Madura",
              descFoto: "Batik Madura memiliki ciri khas motif yang **sederhana dan geometris**, dengan warna-warna cerah. Awalnya dikenal dengan sebutan **\"Batik Mogok\"** karena motifnya hanya terdiri dari titik-titik kecil yang dibuat dengan menggunakan alat khusus yang disebut \"Canting Mogok\" \n\nNamun, seiring dengan waktu, motif batik Madura semakin berkembang dan kini telah mengusung berbagai macam motif yang lebih kompleks. Selain itu, Batik Madura juga terkenal dengan teknik pembuatan batiknya yang unik dengan cara menerapkan lilin panas pada kain.",
              imgSrc: "img_6", tags: "Batik Yogyakarta"),
        Photo(judulFoto: "Memadukan Kain Batik Kawung dengan Gaya Modern yang Trendy",
              descFoto: "Batik Kawung mencerminkan makna dari **kesucian, kemurnian, dan kesempurnaan.** Motif pada Batik Kawung terinspirasi dari sebuah kumbang dengan nama latin **Oryctes Rhinoceros** atau dalam bahasa Jawa lebih dikenal dengan nama **Kumbang Kwangwung**. \n\nBatik Kawung terbagi atas beberapa pola, salah satunya disebut dengan **Batik Kawung Semar** yang terdiri dari pola utama berbentuk empat bulatan lonjong dengan ukuran besar yang menyerupai biji buah nangka dan dipadukan dengan pola bulatan lonjong berukuran lebih kecil pada bagian dalam.",
              imgSrc: "img_7", tags: "Batik Pekalongan"),
        Photo(judulFoto: "Memukau Acara Formal dengan Elegansi Kain Batik Parang",
              descFoto: "Batik Parang merupakan salah satu motif **tertua** di Indonesia yang banyak ditemukan di daerah **Solo dan Yogyakarta**. Nama “Parang” berasal dari kata “Pereng” yang artinya lereng. \n\nBatik parang lereng memiliki makna tidak mudah menyerah yang dapat dilihat dari motifnya yang **menyerupai ombak laut yang tidak berhenti bergerak.**",
              imgSrc: "img_8", tags: "Batik Solo"),
        Photo(judulFoto: "Gaya ke Kampus yang Kekinian dengan Kain Batik Parang",
              descFoto: "Batik Parang merupakan salah satu motif **tertua** di Indonesia yang banyak ditemukan di daerah **Solo dan Yogyakarta**. Nama “Parang” berasal dari kata “Pereng” yang artinya lereng. \n\nBatik parang lereng memiliki makna tidak mudah menyerah yang dapat dilihat dari motifnya yang **menyerupai ombak laut yang tidak berhenti bergerak.**",
              imgSrc: "img_9", tags: "Batik Banten"),
        Photo(judulFoto: "Gabungan Elegan: Kemeja dan Kain Batik Parang",
              descFoto: "Batik Parang merupakan salah satu motif **tertua** di Indonesia yang banyak ditemukan di daerah **Solo dan Yogyakarta**. Nama “Parang” berasal dari kata “Pereng” yang artinya lereng. \n\nBatik parang lereng memiliki makna tidak mudah menyerah yang dapat dilihat dari motifnya yang **menyerupai ombak laut yang tidak berhenti bergerak.**",
              imgSrc: "img_10", tags: "Batik Pekalongan"),
        Photo(judulFoto: "Memadukan Kain Batik Parang dengan Gaya Masa Kini",
              descFoto: "Batik Parang merupakan salah satu motif **tertua** di Indonesia yang banyak ditemukan di daerah **Solo dan Yogyakarta**. Nama “Parang” berasal dari kata “Pereng” yang artinya lereng. \n\nBatik parang lereng memiliki makna tidak mudah menyerah yang dapat dilihat dari motifnya yang **menyerupai ombak laut yang tidak berhenti bergerak.**",
              imgSrc: "img_11", tags: "Batik Cirebon"),
        Photo(judulFoto: "Nongkrong Asik Menggunakan Kain Batik Parang",
              descFoto: "Batik Parang merupakan salah satu motif **tertua** di Indonesia yang banyak ditemukan di daerah **Solo dan Yogyakarta**. Nama “Parang” berasal dari kata “Pereng” yang artinya lereng. \n\nBatik parang lereng memiliki makna tidak mudah menyerah yang dapat dilihat dari motifnya yang **menyerupai ombak laut yang tidak berhenti bergerak.**",
              imgSrc: "img_12", tags: "Batik Yogyakarta"),
        Photo(judulFoto: "Elegan dan Berkelas Menggunakan Batik Kawung",
              descFoto: "Batik Kawung mencerminkan makna dari **kesucian, kemurnian, dan kesempurnaan.** Motif pada Batik Kawung terinspirasi dari sebuah kumbang dengan nama latin **Oryctes Rhinoceros** atau dalam bahasa Jawa lebih dikenal dengan nama **Kumbang Kwangwung**. \n\nBatik Kawung terbagi atas beberapa pola, salah satunya disebut dengan **Batik Kawung Semar** yang terdiri dari pola utama berbentuk empat bulatan lonjong dengan ukuran besar yang menyerupai biji buah nangka dan dipadukan dengan pola bulatan lonjong berukuran lebih kecil pada bagian dalam.",
              imgSrc: "img_13", tags: "Batik Solo"),
        Photo(judulFoto: "Memadukan Gaya Masa Kini dengan Kain Batik Kawung",
              descFoto: "Batik Kawung mencerminkan makna dari **kesucian, kemurnian, dan kesempurnaan.** Motif pada Batik Kawung terinspirasi dari sebuah kumbang dengan nama latin **Oryctes Rhinoceros** atau dalam bahasa Jawa lebih dikenal dengan nama **Kumbang Kwangwung**. \n\nBatik Kawung terbagi atas beberapa pola, salah satunya disebut dengan **Batik Kawung Semar** yang terdiri dari pola utama berbentuk empat bulatan lonjong dengan ukuran besar yang menyerupai biji buah nangka dan dipadukan dengan pola bulatan lonjong berukuran lebih kecil pada bagian dalam.",
              imgSrc: "img_14", tags: "Batik Banten"),
        Photo(judulFoto: "Kain Batik Kawung + Sneakers, Kenapa Tidak?",
              descFoto: "Batik Kawung mencerminkan makna dari **kesucian, kemurnian, dan kesempurnaan.** Motif pada Batik Kawung terinspirasi dari sebuah kumbang dengan nama latin **Oryctes Rhinoceros** atau dalam bahasa Jawa lebih dikenal dengan nama **Kumbang Kwangwung**. \n\nBatik Kawung terbagi atas beberapa pola, salah satunya disebut dengan **Batik Kawung Semar** yang terdiri dari pola utama berbentuk empat bulatan lonjong dengan ukuran besar yang menyerupai biji buah nangka dan dipadukan dengan pola bulatan lonjong berukuran lebih kecil pada bagian dalam.",
              imgSrc: "img_15", tags: "Batik Solo"),
        Photo(judulFoto: "Padu Padan Gaya Kekinian dengan Kain Batik Parang",
              descFoto: "Batik Parang merupakan salah satu motif **tertua** di Indonesia yang banyak ditemukan di daerah **Solo dan Yogyakarta**. Nama “Parang” berasal dari kata “Pereng” yang artinya lereng. \n\nBatik parang lereng memiliki makna tidak mudah menyerah yang dapat dilihat dari motifnya yang **menyerupai ombak laut yang tidak berhenti bergerak.**",
              imgSrc: "img_16", tags: "Batik Madura"),
        Photo(judulFoto: "OOTD Memukau dengan Kain Batik Parang",
              descFoto: "Batik Parang merupakan salah satu motif **tertua** di Indonesia yang banyak ditemukan di daerah **Solo dan Yogyakarta**. Nama “Parang” berasal dari kata “Pereng” yang artinya lereng. \n\nBatik parang lereng memiliki makna tidak mudah menyerah yang dapat dilihat dari motifnya yang **menyerupai ombak laut yang tidak berhenti bergerak.**",
              imgSrc: "img_17", tags: "Batik Pekalongan"),
        Photo(judulFoto: "Gaya Santai dengan Batik Tumpal untuk Hangout",
              descFoto: "Batik Tumpal mempunyai bentuk dasar **segitiga sama kaki.** Motif tumpal ini merupakan hasil inspirasi dari budaya India. \n\nMakna filosofi motif tumpal oleh masyarakat pendukungnya digunakan sebagai **penolak bala**, karena gambar segitiga runcing yang dilambangkan sebagai gigi buaya.",
              imgSrc: "img_18", tags: "Batik Yogyakarta"),
        Photo(judulFoto: "Menjadi Cewe Kue dengan Batik Parang",
              descFoto: "Batik Parang merupakan salah satu motif **tertua** di Indonesia yang banyak ditemukan di daerah **Solo dan Yogyakarta**. Nama “Parang” berasal dari kata “Pereng” yang artinya lereng. \n\nBatik parang lereng memiliki makna tidak mudah menyerah yang dapat dilihat dari motifnya yang **menyerupai ombak laut yang tidak berhenti bergerak.**",
              imgSrc: "img_19", tags: "Batik Pekalongan"),
        Photo(judulFoto: "Gaya Kekinian dengan Kain Batik Khas Yogyakarta",
              descFoto: "Terdapat berbagai macam Kain Batik yang berasal dari Daerah Istimewa Yogyakarta, salah satunya adalah Kain Batik yang memiliki motif **Sidomukti Garuda**. \n\nMotif batik Sidomukti Garuda adalah gabungan antara **unsur burung garuda dan unsur tumbuhan.** Di mana, unsur tumbuhan terutama bunga memiliki makna mendalam yang melambangkan kecantikan dan sumber kehidupan. Sedangkan unsur garuda yang dalam bahasa Jawa disebut dengan **\"Lar\"** melambangkan kegagahan dan kewibawaan sehingga sering dipakai untuk motif-motif batik.",
              imgSrc: "img_20", tags: "Batik Cirebon"),
        Photo(judulFoto: "Berkain dengan Kain Batik asal Yogyakarta",
              descFoto: "Terdapat berbagai macam Kain Batik yang berasal dari Daerah Istimewa Yogyakarta, salah satunya adalah Kain Batik yang memiliki motif **Sidomukti Garuda**. \n\nMotif batik Sidomukti Garuda adalah gabungan antara unsur burung garuda dan unsur tumbuhan. Di mana, unsur tumbuhan terutama bunga memiliki makna mendalam yang melambangkan kecantikan dan sumber kehidupan. Sedangkan unsur garuda yang dalam bahasa Jawa disebut dengan “Lar” melambangkan kegagahan dan kewibawaan sehingga sering dipakai untuk motif-motif batik.",
              imgSrc: "img_21", tags: "Batik Yogyakarta"),
        Photo(judulFoto: "Berkain dengan kain batik asal Yogyakarta",
              descFoto: "Terdapat berbagai macam Kain Batik yang berasal dari Daerah Istimewa Yogyakarta, salah satunya adalah Kain Batik yang memiliki motif **Sidomukti Garuda**. \n\n Motif batik Sidomukti Garuda adalah gabungan antara unsur burung garuda dan unsur tumbuhan. Di mana, unsur tumbuhan terutama bunga memiliki makna mendalam yang melambangkan kecantikan dan sumber kehidupan. Sedangkan unsur garuda yang dalam bahasa Jawa disebut dengan “Lar” melambangkan kegagahan dan kewibawaan sehingga sering dipakai untuk motif-motif batik.",
              imgSrc: "img_22", tags: "Batik Cirebon"),
        Photo(judulFoto: "Berkain dengan kain batik asal Yogyakarta",
              descFoto: "Terdapat berbagai macam Kain Batik yang berasal dari Daerah Istimewa Yogyakarta, salah satunya adalah Kain Batik yang memiliki motif **Sidomukti Garuda**. \n\n Motif batik Sidomukti Garuda adalah gabungan antara unsur burung garuda dan unsur tumbuhan. Di mana, unsur tumbuhan terutama bunga memiliki makna mendalam yang melambangkan kecantikan dan sumber kehidupan. Sedangkan unsur garuda yang dalam bahasa Jawa disebut dengan “Lar” melambangkan kegagahan dan kewibawaan sehingga sering dipakai untuk motif-motif batik.",
              imgSrc: "img_23", tags: "Batik Banten"),
        Photo(judulFoto: "Berkain dengan kain batik asal Yogyakarta",
              descFoto: "Terdapat berbagai macam Kain Batik yang berasal dari Daerah Istimewa Yogyakarta, salah satunya adalah Kain Batik yang memiliki motif **Sidomukti Garuda**. \n\n Motif batik Sidomukti Garuda adalah gabungan antara unsur burung garuda dan unsur tumbuhan. Di mana, unsur tumbuhan terutama bunga memiliki makna mendalam yang melambangkan kecantikan dan sumber kehidupan. Sedangkan unsur garuda yang dalam bahasa Jawa disebut dengan “Lar” melambangkan kegagahan dan kewibawaan sehingga sering dipakai untuk motif-motif batik.",
              imgSrc: "img_24", tags: "Batik Solo"),
        Photo(judulFoto: "Berkain dengan kain batik asal Yogyakarta",
              descFoto: "Terdapat berbagai macam Kain Batik yang berasal dari Daerah Istimewa Yogyakarta, salah satunya adalah Kain Batik yang memiliki motif **Sidomukti Garuda**. \n\n Motif batik Sidomukti Garuda adalah gabungan antara unsur burung garuda dan unsur tumbuhan. Di mana, unsur tumbuhan terutama bunga memiliki makna mendalam yang melambangkan kecantikan dan sumber kehidupan. Sedangkan unsur garuda yang dalam bahasa Jawa disebut dengan “Lar” melambangkan kegagahan dan kewibawaan sehingga sering dipakai untuk motif-motif batik.",
              imgSrc: "img_25", tags: "Batik Madura"),
        Photo(judulFoto: "Berkain dengan kain batik asal Yogyakarta",
              descFoto: "Terdapat berbagai macam Kain Batik yang berasal dari Daerah Istimewa Yogyakarta, salah satunya adalah Kain Batik yang memiliki motif **Sidomukti Garuda**. \n\n Motif batik Sidomukti Garuda adalah gabungan antara unsur burung garuda dan unsur tumbuhan. Di mana, unsur tumbuhan terutama bunga memiliki makna mendalam yang melambangkan kecantikan dan sumber kehidupan. Sedangkan unsur garuda yang dalam bahasa Jawa disebut dengan “Lar” melambangkan kegagahan dan kewibawaan sehingga sering dipakai untuk motif-motif batik.",
              imgSrc: "img_26", tags: "Batik Banten")
        
    ]
}
