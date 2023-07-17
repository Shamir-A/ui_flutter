
import 'package:flutter/material.dart';

// void main() {
//   runApp(DevicePreview(
//       builder: (BuildContext context) => MaterialApp(
//             useInheritedMediaQuery: true,
//             home: Home(),
//             debugShowCheckedModeBanner: false,
//           )));
// }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4ED),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.shifting,
            currentIndex: index,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "Home",
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_sharp),
                  label: "Whishlist",
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: Colors.black),
            ],
            onTap: (tapIndex) {
              setState(() {
                index = tapIndex;
              });
            },
            selectedItemColor: const Color(0xFFD3F26A),
            unselectedItemColor: Colors.white,
            elevation: 0,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 5, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome Back."),
                          Text("Carolina Turner",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/UI - 03/Profile-Model.jpg"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, bottom: 10, top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIconColor: Colors.black,
                      prefixIcon: const Icon(Icons.search_sharp),
                      labelText: "Try to find..",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  textAlign: TextAlign.start,
                  "Task-based Explanation process",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 38),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white,
                          height: 120,
                          width: 120,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 10, right: 10),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    height: 40,
                                    width: 80,
                                    color: const Color(0xFFD3F26A),
                                    child:
                                        const Center(child: Text("Add task")),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Creatives for branging",
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white,
                          height: 120,
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 20, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    height: 40,
                                    width: 80,
                                    color: Colors.grey,
                                    child: const Center(child: Text("Review")),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Verification process \n with team",
                                    textAlign: TextAlign.start),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white,
                          height: 120,
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 20, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    height: 40,
                                    width: 80,
                                    color: Colors.grey,
                                    child: const Center(child: Text("Review")),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Verification process \n with team",
                                    textAlign: TextAlign.start),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Follow List",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    Text("See all", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: ListTile(
                  tileColor: Colors.white60,
                  onTap: () {},
                  title: const Text(
                    "Documents Verification",
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: const Text("3 min ago"),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                        height: 40,
                        width: 40,
                        color: const Color(0xFFD3F26A),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: ListTile(
                  tileColor: Colors.white60,
                  onTap: () {},
                  title: const Text(
                    "Newbie Onboarding",
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: const Text("5 days ago"),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                        height: 40,
                        width: 40,
                        color: const Color(0xFFD3F26A),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
