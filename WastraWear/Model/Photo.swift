//
//  Photo.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 04/04/23.
//

import Foundation

struct Photo : Identifiable {
    var id = UUID()
    var judulFoto: String
    var descFoto: String
    var imgSrc: String
    let tags: Tag.RawValue

}


extension Photo{
    static let all: [Photo] = [
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
