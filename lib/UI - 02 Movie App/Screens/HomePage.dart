import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import '../utils/Colors.dart';
import 'DetailsPage.dart';

void main() {
  runApp(const MaterialApp(
    useInheritedMediaQuery: true,
    home: MovieHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class MovieHome extends StatefulWidget {
  const MovieHome({super.key});

  @override
  State<MovieHome> createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> {
  int sIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      appBar: AppBar(
        backgroundColor: MyColors.bgColor,
        elevation: 0,
        title: const Text("MovieZ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            )),
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30, left: 10, right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: FlashyTabBar(
            backgroundColor: MyColors.btmBgColor,
            iconSize: 28,
            selectedIndex: sIndex,
            onItemSelected: (index) =>
                setState(() {
                  sIndex = index;
                }),
            items: [
              FlashyTabBarItem(
                  icon: const Icon(Icons.home_outlined, color: Colors.white), title: const Text("Home", style: TextStyle(color: Colors.white),)),
              FlashyTabBarItem(
                  icon: const Icon(Icons.search_outlined, color: Colors.white),
                  title: const Text("Search", style: TextStyle(color: Colors.white),)),
              FlashyTabBarItem(
                  icon: const Icon(Icons.bookmark,color: Colors.white), title: const Text("Whishlist", style: TextStyle(color: Colors.white),)),
              FlashyTabBarItem(
                  icon: const Icon(Icons.more_vert_outlined, color: Colors.white),
                  title: const Text("Setting", style: TextStyle(color: Colors.white),)),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search",
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.cancel),
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CarouselSlider(
                  items: [
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  "assets/images/UI - 02/tangled.jpg"))),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  "assets/images/UI - 02/luca2.jpg"))),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  "assets/images/UI - 02/forrest_gump.jpg"))),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  "assets/images/UI - 02/spector007.jpg"))),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  "assets/images/UI - 02/Interstaller.jpg"))),
                    ),
                  ],
                  options: CarouselOptions(
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      pauseAutoPlayOnManualNavigate: true,
                      height: 200)),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Action",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[400]),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const MDetails(
                                      movieTitle: "Kick Ass 2",
                                      synopsis:
                                      "Kick-Ass, a superhero in high school, is forced to join new heroes and old allies in order to fight his old nemesis, Red Mist, when he forms a team of supervillains to get revenge against him.",
                                      rdate: "2013",
                                      rating: "6.5",
                                      language: "English",
                                      backposter:
                                      "assets/images/UI - 02/Kick-Ass-2.jpg")));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  "assets/images/UI - 02/MoviePosters/Kick-Ass-2.jpg",
                                  fit: BoxFit.cover),
                            ),
                            const Text("Kick Ass 2", style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                              const MDetails(movieTitle: "Mad Max Fury Road",
                                  synopsis: "In a post-apocalyptic wasteland, Max, a drifter and survivor, unwillingly joins Imperator Furiosa, a rebel warrior, in a quest to overthrow a tyrant who controls the land's water supply.",
                                  rdate: "2015",
                                  rating: "8.1",
                                  language: "English",
                                  backposter: "assets/images/UI - 02/Mad-Max-Fury-Road.jpg")));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  "assets/images/UI - 02/MoviePosters/Mad-Max-Fury-Road.jpg",
                                  fit: BoxFit.cover),
                            ),
                            const Text("Mad Max Fury Road",
                                style: TextStyle(color: Colors.white),
                                softWrap: true,
                                textAlign: TextAlign.center,
                                textWidthBasis: TextWidthBasis.parent),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                              const MDetails(movieTitle: "Terminator Genisys",
                                  synopsis: "John sends Kyle to the year 1984 to protect his mother, Sarah, from being killed. When the timeline is altered, Kyle asks her to travel to the year 2017 to stop an AI system that wants to end mankind.",
                                  rdate: "2015",
                                  rating: "6.3",
                                  language: "English",
                                  backposter: "assets/images/UI - 02/Terminator-Genisys.jpg")));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  "assets/images/UI - 02/MoviePosters/Terminator-Genisys.jpg",
                                  fit: BoxFit.cover),
                            ),
                            const Text("Terminator Genisys",
                                style: TextStyle(color: Colors.white),
                                softWrap: true,
                                textAlign: TextAlign.center,
                                textWidthBasis: TextWidthBasis.parent),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                              const MDetails(movieTitle: "Watchmen",
                                  synopsis: "Rorschach, a vigilante, sets out to investigate the mysterious circumstances under which one of his colleagues died. In the process of doing so, he discovers some disturbing secrets.",
                                  rdate: "2009",
                                  rating: "7.6",
                                  language: "English",
                                  backposter: "assets/images/UI - 02/Watchmen.jpg")));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  "assets/images/UI - 02/MoviePosters/Watchmen.jpg",
                                  fit: BoxFit.cover),
                            ),
                            const Text("Watchmen",
                                style: TextStyle(color: Colors.white),
                                softWrap: true,
                                textAlign: TextAlign.center,
                                textWidthBasis: TextWidthBasis.parent),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                              const MDetails(movieTitle: "Jurassic Park",
                                  synopsis: "John Hammond, an entrepreneur, opens a wildlife park containing cloned dinosaurs. However, a breakdown of the island's security system causes the creatures to escape and bring about chaos.",
                                  rdate: "1993",
                                  rating: "8.2",
                                  language: "English",
                                  backposter: "assets/images/UI - 02/Jurassic-Park.jpg")));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  "assets/images/UI - 02/MoviePosters/Jurassick-Park.jpg",
                                  fit: BoxFit.cover),
                            ),
                            const Text("Jurassic Park",
                                style: TextStyle(color: Colors.white),
                                softWrap: true,
                                textAlign: TextAlign.center,
                                textWidthBasis: TextWidthBasis.parent),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[400]),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                                  const MDetails(movieTitle: "The Shawshank Redemption",
                                      synopsis: "Andy Dufresne, a successful banker, is arrested for the murders of his wife and her lover, and is sentenced to life imprisonment at the Shawshank prison. He becomes the most unconventional prisoner.",
                                      rdate: "1994",
                                      rating: "9.3",
                                      language: "English",
                                      backposter: "assets/images/UI - 02/Shawshank-Redemption.jpg")));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  "assets/images/UI - 02/MoviePosters/Shawshank-Redemption.jpg",
                                  fit: BoxFit.cover),
                            ),
                            const Text("The Shawshank Redemption",
                                style: TextStyle(color: Colors.white),
                                softWrap: true,
                                textAlign: TextAlign.center,
                                textWidthBasis: TextWidthBasis.parent),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                              const MDetails(movieTitle: "The Godfather",
                                  synopsis: "Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.",
                                  rdate: "1972",
                                  rating: "9.2",
                                  language: "English",
                                  backposter: "assets/images/UI - 02/Goodfellas.jpg")));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  "assets/images/UI - 02/MoviePosters/The-Godfather.jpg",
                                  fit: BoxFit.cover),
                            ),
                            const Text("The Godfather",
                                style: TextStyle(color: Colors.white),
                                softWrap: true,
                                textAlign: TextAlign.center,
                                textWidthBasis: TextWidthBasis.parent),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                              const MDetails(movieTitle: "Goodfellas",
                                  synopsis: "Young Henry Hill, with his friends Jimmy and Tommy, begins the climb from being a petty criminal to a gangster on the mean streets of New York.",
                                  rdate: "1990",
                                  rating: "8.7",
                                  language: "English",
                                  backposter: "assets/images/UI - 02/Goodfellas.jpg")));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  "assets/images/UI - 02/MoviePosters/Goodfellas.jpg",
                                  fit: BoxFit.cover),
                            ),
                            const Text("Goodfellas",
                                style: TextStyle(color: Colors.white),
                                softWrap: true,
                                textAlign: TextAlign.center,
                                textWidthBasis: TextWidthBasis.parent),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                              const MDetails(movieTitle: "LOTR Return of the King",
                                  synopsis: "The former Fellowship members prepare for the final battle. While Frodo and Sam approach Mount Doom to destroy the One Ring, they follow Gollum, unaware of the path he is leading them to",
                                  rdate: "2003",
                                  rating: "9.0",
                                  language: "English",
                                  backposter: "assets/images/UI - 02/LOTR Return of the King.jpg")));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  "assets/images/UI - 02/MoviePosters/T-L-O-T-R-Return-of-the-King.jpg",
                                  fit: BoxFit.cover),
                            ),
                            const Text("LOTR Return of the King",
                                style: TextStyle(color: Colors.white),
                                softWrap: true,
                                textAlign: TextAlign.center,
                                textWidthBasis: TextWidthBasis.parent),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                              const MDetails(movieTitle: "Fight Club",
                                  synopsis: "",
                                  rdate: "1999",
                                  rating: "8.8",
                                  language: "English",
                                  backposter: "assets/images/UI - 02/Fight-Club.jpg")));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  "assets/images/UI - 02/MoviePosters/Fight-Club.jpg",
                                  fit: BoxFit.cover),
                            ),
                            const Text("Fight Club",
                                style: TextStyle(color: Colors.white),
                                softWrap: true,
                                textAlign: TextAlign.center,
                                textWidthBasis: TextWidthBasis.parent),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
