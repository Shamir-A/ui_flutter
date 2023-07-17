import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'HomePage.dart';

void main() {
  runApp(MaterialApp(
        useInheritedMediaQuery: true,
        home: splash(),
        debugShowCheckedModeBanner: false,
      ));
}

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD3F26A),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 45,
                        width: 45,
                        color: Colors.white,
                        child: const Center(
                            child: Icon(
                          Icons.category_outlined,
                          size: 30,
                        )),
                      ),
                    ),
                    const Icon(
                      color: Colors.black,
                      Icons.menu_open_rounded,
                      size: 40,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                textAlign: TextAlign.center,
                "Market \n your growth Strategy",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Lottie.network(
                  height: 320,
                  width: 320,
                  "https://lottie.host/b58212e5-d139-4397-b649-75ab230185cd/YmCrcBKQ9I.json"),
              const SizedBox(
                height: 40,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Get Started",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF309D13),
                                fontWeight: FontWeight.bold),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 35,
                              height: 35,
                              color: Colors.black,
                              child: const Center(
                                child: Icon(Icons.arrow_forward,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
