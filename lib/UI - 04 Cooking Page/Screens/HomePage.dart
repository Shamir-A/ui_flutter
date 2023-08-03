
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:ui_flutter/UI%20-%2004%20Cooking%20Page/Screens/CookingPage.dart';

void main() {
  runApp(const MaterialApp(
        useInheritedMediaQuery: true,
        home: Homee(),
        debugShowCheckedModeBanner: false,
      ));
}

class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  int sIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FF),
      bottomNavigationBar: FlashyTabBar(
        iconSize: 28,
          selectedIndex: sIndex,
          onItemSelected: (index) => setState(() {
                sIndex = index;
              }),
          items: [
            FlashyTabBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text("Home")),
            FlashyTabBarItem(
                icon: const Icon(Icons.add),
                title: const Text("Add")),
            FlashyTabBarItem(
                icon: const Icon(Icons.star_border_outlined),
                title: const Text("Favorite")),
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40)),
              child: Container(
                color: const Color(0xFF6C60E0),
                height: 240,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.category_outlined,
                                size: 28,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_none_outlined,
                                size: 28,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Hi Sonia",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      const Text("Welcome Back 👋",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search_outlined,
                                color: Color(0xFFD8D6F7), size: 28),
                            label: const Text(
                                "what category are you searching for?"),
                            labelStyle:
                                const TextStyle(color: Color(0xFFD8D6F7)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                            filled: true,
                            fillColor: const Color(0xFFA7A0EC)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Categories",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.delete_outline_rounded,
                              size: 28,
                              color: Color(0xFFB3ADF0),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.drive_file_rename_outline_outlined,
                              size: 28,
                              color: Color(0xFFB3ADF0),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.compare_arrows_outlined,
                              size: 28,
                              color: Color(0xFF5547DA),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        color: const Color(0xFFFFF3C6),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Container(
                                height: 70,
                                width: 70,
                                color: const Color(0xFFFFFAE7),
                                child: const Center(
                                    child: Icon(
                                  Icons.lightbulb_outline_rounded,
                                  size: 35,
                                  color: Color(0xFFF9AE52),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "New Ideas",
                              style: TextStyle(color: Color(0xFFF9AE52)),
                            )
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        color: const Color(0xFFD7EFFF),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Container(
                                height: 70,
                                width: 70,
                                color: const Color(0xFFF1F9FF),
                                child: const Center(
                                    child: Icon(
                                  Icons.music_note_outlined,
                                  size: 35,
                                  color: Color(0xFF0E88F5),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Music",
                              style: TextStyle(color: Color(0xFF0E88F5)),
                            )
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        color: const Color(0xFFE0D7FF),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Container(
                                height: 70,
                                width: 70,
                                color: const Color(0xFFF4F1FF),
                                child: const Center(
                                    child: Icon(
                                  Icons.computer_outlined,
                                  size: 35,
                                  color: Color(0xFF6E49EE),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Programming",
                              style: TextStyle(color: Color(0xFF6E49EE)),
                            )
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cooking()));
                        },
                        child: Container(
                          color: const Color(0xFFFBE1FB),
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  color: const Color(0xFFF4F1FF),
                                  child: const Center(
                                      child: Icon(
                                    Icons.cookie_outlined,
                                    size: 35,
                                    color: Color(0xFFEF4BBF),
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Cooking",
                                style: TextStyle(color: Color(0xFFEF4BBF)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        color: const Color(0xFFB8EEDC),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Container(
                                height: 70,
                                width: 70,
                                color: const Color(0xFFE3FFF6),
                                child: const Center(
                                    child: Icon(
                                  Icons.flight_takeoff_outlined,
                                  size: 35,
                                  color: Color(0xFF31A17B),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Travel",
                              style: TextStyle(color: Color(0xFF31A17B)),
                            )
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        color: const Color(0xFFFFDFCD),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Container(
                                height: 70,
                                width: 70,
                                color: const Color(0xFFFFF2EB),
                                child: const Center(
                                    child: Icon(
                                  Icons.science_outlined,
                                  size: 35,
                                  color: Color(0xFFFE7F63),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Science",
                              style: TextStyle(color: Color(0xFFFE7F63)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
