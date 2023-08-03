import 'package:flutter/material.dart';

class Cupcake extends StatelessWidget {
  const Cupcake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6E49EE),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios, size: 28, color: Colors.white),
                  Text("Cupcake",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Icon(
                    Icons.share,
                    size: 28,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFFF8F8FF),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(35)),
                              child: Container(
                                height: 50,
                                width: 50,
                                color: const Color(0xFFFFFFFF),
                                child: const Icon(Icons.notifications,
                                    color: Color(0xFFC0BBF3)),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(35)),
                              child: Container(
                                height: 50,
                                width: 50,
                                color: const Color(0xFFFFFFFF),
                                child: const Icon(Icons.star,
                                    color: Color(0xFFFF8A00)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text("Title"),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            color: Colors.white,
                            child: const Text("Cupcake",
                                style: TextStyle(fontSize: 28),
                                softWrap: true,
                                textAlign: TextAlign.start),
                          ),
                        ),
                      ),
                      const Text("Url"),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            color: Colors.white,
                            child: const Text(
                                "https://www.bbcgoodfood.com/recipes/cupcakes",
                                style: TextStyle(fontSize: 18),
                                softWrap: true,
                                textAlign: TextAlign.start),
                          ),
                        ),
                      ),
                      const Text("Discreption"),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                            color: Colors.white,
                            child: const Text(
                                "A cupcake is a small cake designed to serve one person, which may be baked in a small thin paper or aluminum cup. As with larger cakes, frosting and other cake decorations such as fruit and candy may be applied. \n"
                                "\nMake a batch of 24 basic cupcakes with this simple recipe; perfect for birthday parties or bake sales. This recipe uses just six ingredients, most of which store cupboard essentials that you may already have in the kitchen. ",
                                    //"To make sure these basic cupcakes are extra light, cream the butter and sugar together before adding the remaining ingredients.",
                                style: TextStyle(fontSize: 18),
                                softWrap: true,
                                textAlign: TextAlign.start),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(side: BorderSide(color: Color(0xFF6C60E0))),
                                    backgroundColor: const Color(0xFFF8F8FF),
                                    fixedSize: const Size(170, 60)),
                                child: const Text("Cancel",
                                    style:
                                        TextStyle(color: Color(0xFF6C60E0)))),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                    backgroundColor: const Color(0xFF6C60E0),
                                    fixedSize: const Size(170, 60)),
                                child: const Text("Save")),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
