import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_app/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kofolio',
            style: GoogleFonts.breeSerif(
              textStyle: TextStyle(
                color: HexColor('EEEEEE'),
                fontSize: 42,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Hey There 🙌',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: HexColor('00ADB5'),
                      fontSize: 35,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Kavan Gondalia',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Flutter Developer',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: HexColor('00ADB5'),
                  radius: 90,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/kavan.jpeg'),
                    radius: 80,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => launch('https://github.com/kavania2002'),
                    icon: Icon(FontAwesome.github),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: Icon(FontAwesome.linkedin),
                    onPressed: () =>
                        launch('https://www.linkedin.com/in/kavania2002/'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () =>
                        launch('mailto:kavan155gondalia@gmail.com'),
                    icon: Icon(FontAwesome.google),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Projects',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),
                ),
              ),
              CarouselSlider(
                items: [
                  Project(
                      'VoteChain',
                      'A decentralized voting App to have safe and secure voting.',
                      'https://github.com/AkshilVT/VoteChain'),
                  Project('pgHUB', 'Booking site for PGs',
                      'https://github.com/kavania2002/pgHUB'),
                ],
                options: CarouselOptions(
                  height: 120.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
