import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:netflix/search.dart';

import 'package:url_launcher/url_launcher.dart';


class ferdi extends StatefulWidget {
  const ferdi({super.key});

  @override
  State<ferdi> createState() => _ferdiState();
}

class _ferdiState extends State<ferdi> {

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent, // transparent status bar
            systemNavigationBarColor: Colors.black, // navigation bar color
            statusBarIconBrightness:
                Brightness.light, // status bar icons' color
            systemNavigationBarIconBrightness:
                Brightness.light, //navigation bar icons' color
          ),
          child: Expanded(
              child: Scaffold(
            bottomNavigationBar: GNav(
                tabActiveBorder: Border.all(color: Colors.white38),
                gap: 12,
                activeColor: Colors.white,
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                iconSize: 20,
                tabs: const [
                  GButton(icon: FontAwesomeIcons.house, text: 'Beranda'),
                  GButton(icon: FontAwesomeIcons.gamepad, text: 'Games'),
                  GButton(icon: FontAwesomeIcons.bookmark, text: 'Populer'),
                  GButton(icon: FontAwesomeIcons.circleDown, text: 'Download'),
                ]),
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
                child: Column(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 500,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            
                              image: DecorationImage(
                                  image: const AssetImage('assets/image/joker.png'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.5),
                                      BlendMode.darken))),
                        ),
                        Container(
                          height: 500,
                          decoration: BoxDecoration(
                            
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.center,
                                  colors: [
                                Colors.black.withOpacity(1),
                                Colors.transparent
                              ])),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/image/logos_netflix-icon.png'),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  FontAwesomeIcons.magnifyingGlass,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image.asset(
                                'assets/image/Rectangle 3.png',
                                height: 25,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 65),
                          child: Row(
                            children: [
                              const Spacer(),
                              const Text(
                                'Acara TV',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                              const Spacer(),
                              const Text(
                                'Film',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                              const Spacer(),
                              GestureDetector( onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const Kategori();
                                }));
                              },
                                child: const Text( 
                                
                                'Kategori',
                                
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                                    
                              ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                FontAwesomeIcons.sortDown,
                                size: 15,
                                color: Colors.white,
                              ),
                              const Spacer()
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          height: 500,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    'assets/icons/plus.png',
                                    cacheHeight: 50,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Daftar Gaya',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  
                                  ElevatedButton(onPressed: (){
                                    launchURL('https://web-fake.netlify.app/');
                                  }, child: Text('launch url'))
                                ],
                              ),
                              const Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    'assets/icons/info.png',
                                    cacheHeight: 50,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Info',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                              const Spacer(),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Indonesia Movies',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                        const SizedBox(
                        height: 10,
                        ),

                        Container(
                            height: 180,
                            width: MediaQuery.of(context).size.width,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 170,
                                    width: 130,
                                    child: Image.asset(
                                      'assets/image/film16.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 170,
                                    width: 130,
                                    child: Image.asset(
                                      'assets/image/film12.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 170,
                                    width: 130,
                                    child: Image.asset(
                                      'assets/image/film14.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 170,
                                    width: 130,
                                    child: Image.asset(
                                      'assets/image/film13.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 170,
                                    width: 130,
                                    child: Image.asset(
                                      'assets/image/film15.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 170,
                                    width: 130,
                                    child: Image.asset(
                                      'assets/image/film11.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Film & Acara TV Asia',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 180,
                                width: MediaQuery.of(context).size.width,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 170,
                                        width: 130,
                                        child: Image.asset(
                                          'assets/image/film1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 170,
                                        width: 130,
                                        child: Image.asset(
                                          'assets/image/film2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 170,
                                        width: 130,
                                        child: Image.asset(
                                          'assets/image/film3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 170,
                                        width: 130,
                                        child: Image.asset(
                                          'assets/image/film4.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 170,
                                        width: 130,
                                        child: Image.asset(
                                          'assets/image/film5.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Sedang Tren Sekarang',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                height: 180,
                                width: MediaQuery.of(context).size.width,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 170,
                                        width: 130,
                                        child: Image.asset(
                                          'assets/image/film6.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 170,
                                        width: 130,
                                        child: Image.asset(
                                          'assets/image/film7.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 170,
                                        width: 130,
                                        child: Image.asset(
                                          'assets/image/film8.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 170,
                                        width: 130,
                                        child: Image.asset(
                                          'assets/image/film9.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 170,
                                        width: 130,
                                        child: Image.asset(
                                          'assets/image/film5.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),
          )),
        ));
  }
}
