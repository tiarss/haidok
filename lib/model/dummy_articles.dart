import 'package:flutter/material.dart';

class Articles {
  String title;
  String description;
  Key key;

  Articles({required this.title, required this.description, required this.key});
}

List<Articles> articlesData = [
  Articles(
    title: "Manfaat Olahraga Teratur untuk Kesehatan",
    description:
        "Olahraga teratur memiliki dampak positif yang signifikan pada kesehatan tubuh dan pikiran. Aktivitas fisik membantu meningkatkan sirkulasi darah, menjaga berat badan, dan meningkatkan stamina. Selain itu, olahraga juga dapat mengurangi risiko penyakit jantung, diabetes, dan tekanan darah tinggi. Olahraga juga dikenal dapat meningkatkan kualitas tidur dan mengurangi tingkat stres. Oleh karena itu, penting untuk mengintegrasikan kegiatan fisik dalam rutinitas harian. Pilihlah olahraga yang sesuai dengan kebutuhan dan preferensi Anda, seperti berlari, berenang, atau yoga. Dengan melibatkan diri dalam olahraga secara teratur, Anda dapat meningkatkan kesehatan fisik dan mental Anda, menjadikan hidup lebih sehat dan bugar.",
    key: const ValueKey<String>("1"),
  ),
  Articles(
    title: "Kebiasaan Makan Sehat untuk Menjaga Berat Badan Ideal",
    description:
        "Menerapkan kebiasaan makan sehat adalah kunci untuk menjaga berat badan ideal dan mendukung kesehatan tubuh. Konsumsi makanan yang kaya akan nutrisi, seperti buah-buahan, sayuran, dan biji-bijian, membantu memenuhi kebutuhan gizi tubuh. Hindari makanan yang tinggi lemak jenuh dan gula tambahan, yang dapat menyebabkan penumpukan lemak dan masalah kesehatan. Selain itu, perhatikan ukuran porsi makanan dan jangan melewatkan waktu makan. Sarapan pagi yang sehat dapat meningkatkan metabolisme tubuh, sementara makan malam ringan membantu mencegah penumpukan berlebihan. Dengan mengadopsi kebiasaan makan sehat, Anda tidak hanya menjaga berat badan tetap ideal, tetapi juga memberikan nutrisi penting yang diperlukan oleh tubuh untuk berfungsi dengan baik.",
    key: const ValueKey<String>("2"),
  ),
  Articles(
    title: "Manfaat Minum Air Putih untuk Kesehatan Tubuh",
    description:
        "Daya tahan adalah istilah yang berkaitan dengan kekuatan untuk melakukan dan mempertahankan aktivitas fisik berat, tanpa mengalami kelelahan. Biasanya aktivitas tersebut dilakukan dalam jangka waktu yang lama. Untuk mencapai daya tahan yang baik, seseorang membutuhkan banyak waktu, tenaga, dan latihan yang konsisten. Secara perlahan tapi pasti, hal tersebut dapat meningkatkan daya tahan. Nah, mau tahu lebih jauh mengenai daya tahan dan cara meningkatkannya? Berikut ulasannya!",
    key: const ValueKey<String>("3"),
  ),
  Articles(
    title: "Pentingnya Tidur yang Cukup untuk Kesehatan Mental",
    description:
        "Tidur yang cukup memiliki dampak besar pada kesehatan mental. Kurang tidur dapat menyebabkan penurunan kinerja kognitif, peningkatan tingkat stres, dan risiko gangguan mental. Oleh karena itu, penting untuk memprioritaskan waktu tidur yang cukup setiap malam. Ciptakan rutinitas tidur yang nyaman, hindari stimulasi seperti layar gadget sebelum tidur, dan pertahankan jadwal tidur yang teratur. Tidur yang berkualitas membantu otak untuk memproses informasi, memperkuat memori, dan memulihkan diri dari stres sehari-hari. Dengan menjaga pola tidur yang baik, Anda dapat mendukung kesehatan mental dan meningkatkan kualitas hidup secara keseluruhan.",
    key: const ValueKey<String>("4"),
  ),
  Articles(
    title: "Cara Mengelola Stres dalam Kehidupan Sehari-hari",
    description:
        "Stres dapat memiliki dampak negatif pada kesehatan fisik dan mental jika tidak dikelola dengan baik. Pilihlah teknik manajemen stres seperti meditasi, yoga, atau olahraga ringan untuk membantu meredakan tekanan. Identifikasi sumber stres dan cari solusi atau dukungan jika diperlukan. Selain itu, penting untuk menyediakan waktu untuk kegiatan yang menyenangkan dan bersantai. Jangan ragu untuk berbicara dengan teman atau profesional jika Anda merasa kesulitan mengelola stres. Dengan mengadopsi strategi manajemen stres yang efektif, Anda dapat menjaga kesehatan mental Anda dan meningkatkan daya tahan tubuh terhadap tekanan sehari-hari.",
    key: const ValueKey<String>("5"),
  ),
];
