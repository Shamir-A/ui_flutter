import 'package:flutter/material.dart';
import 'package:ui_flutter/UI%20-%2002%20Movie%20App/Screens/HomePage.dart';

class MDetails extends StatelessWidget {
  final String movieTitle;
  final String language;
  final String synopsis;
  final String rdate;
  final String rating;
  final String backposter;

  const MDetails(
      {Key? key,
      required this.movieTitle,
      required this.synopsis,
      required this.rdate,
      required this.rating,
      required this.language,
      required this.backposter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3f2c25),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: IconButton(
                  //alignment: Alignment.topLeft,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MovieHome()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: IconButton(
                  //alignment: Alignment.topLeft,
                  icon: const Icon(
                    Icons.favorite,
                    size: 20,
                  ),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const MovieHome()));
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  backposter,
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.dstIn,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                movieTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Text(language,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Release Year - " + rdate,
                          style: const TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          "⭐ " + rating,
                          style: const TextStyle(fontSize: 18, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Synopsis",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF3454F1)),
                      textAlign: TextAlign.center),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(synopsis,
                        style: const TextStyle(
                          fontSize: 20,
                            color: Colors.white
                        ),
                        textAlign: TextAlign.start),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
