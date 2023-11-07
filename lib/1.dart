import 'package:flutter/material.dart';
import 'package:netflix/loadingprofile.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              //net

              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 98),
                      child: Container(
                        width: 200,
                        child: Image.asset('assets/image/logos_netflix.png',
                            height: 30),
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Container(
                  child: Image.asset('assets/icons/bx_bxs-pencil.png'),
                )
              ],
            ),
            const SizedBox(
              height: 180,
            ),
            const Text(
              'Siapa yang Menonton?',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 23),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 125,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return loadingprofile();
                            }));
                          },
                          child: Image.asset(
                            'assets/image/Rectangle 3.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ferdinand Sianturi',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  width: 45,
                ),
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/Rectangle 2.png'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Pani Ma Lop',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/Rectangle 4.png'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Emon Sianturi',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  width: 45,
                ),
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 125,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white38,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                            'assets/image/Group 1.png',
                          ))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tambahkan Profil',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            )
          ],
        )));
  }
}
