import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'profileferdi.dart';


class Kategori extends StatefulWidget {
  const Kategori({super.key});

  @override
  State<Kategori> createState() => KategoriState();
}

class KategoriState extends State<Kategori> {


  Widget build(BuildContext context) {
    return Stack(
      children: [
        ferdi(),
        Scaffold(
          bottomNavigationBar: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ferdi();
              }));
            },
            child: Container(
              height: 75,
              child: Container(
                  child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(FontAwesomeIcons.xmark, color: Colors.black),
              )),
            ),
          ),
          backgroundColor: Colors.black.withOpacity(0.9),
          body: ListView(children: const [
            Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                Center(
                  child: Text(
                    'Beranda',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Daftar Saya',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Tersedia Untuk Di-Download',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Anak & Keluarga',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Anime',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Asia',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Dokumenter',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Drama',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Fantasi',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Fiksi Ilmiah',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Hollywood',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Horor',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Indonesia',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Internasional',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Kisah Cinta',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Komedi',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Laga',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Menerima Banyak Pujian',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Musik & Musikal',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Reality',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Stand - Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Thriller',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Deskripsi Audio Dalam Bahasa\nIndonesia',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ],
    );
  }
}
