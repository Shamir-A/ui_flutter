import 'package:flutter/material.dart';
import 'package:ui_flutter/UI%20-%2004%20Cooking%20Page/Screens/CupcakePage.dart';
import 'package:ui_flutter/UI%20-%2004%20Cooking%20Page/Screens/HomePage.dart';



class Cooking extends StatelessWidget {
  const Cooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FF),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFF6C60E0),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Homee()));
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                size: 33,
                                color: Color(0xFFFBFBFE),
                              )),
                          const Text("Cooking",
                              style: TextStyle(
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_none_outlined,
                                size: 35,
                                color: Color(0xFFFBFBFE),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Text("Labels",
                  style: TextStyle(color: Color(0xFF46465A), fontSize: 28)),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 35,
                        width: 45,
                        color: const Color(0xFFC0BBF3),
                        child: const Center(
                            child: Icon(Icons.add, color: Color(0xFF7250F0))),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 35,
                        width: 65,
                        color: const Color(0xFFC0BBF3),
                        child: const Center(
                            child: Text(
                          "All",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 35,
                          width: 65,
                          color: const Color(0xFF6C60E0),
                          child: const Center(
                              child: Text(
                            "Cake",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 35,
                        width: 95,
                        color: const Color(0xFFC0BBF3),
                        child: const Center(
                            child: Text(
                          "Fast Food",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 35,
                        width: 85,
                        color: const Color(0xFFC0BBF3),
                        child: const Center(
                            child: Text(
                          "Kabab",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 35,
                        width: 95,
                        color: const Color(0xFFC0BBF3),
                        child: const Center(
                            child: Text(
                          "Fresh Juice",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bookmarks",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold, color: Color(0xFF575769))),
                      Row(
                        children: [
                          Icon(Icons.bookmark_border_outlined),
                          Text("154"),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_outline_outlined,
                            size: 38,
                            color: Color(0xFF6A5EDF),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.drive_file_rename_outline_outlined,
                            size: 38,
                            color: Color(0xFF6A5EDF),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.compare_arrows_outlined,
                            size: 38,
                            color: Color(0xFF6A5EDF),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: const Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        //color: Colors.yellowAccent,
                        child: Image.asset(fit: BoxFit.cover,"assets/images/UI - 04/Vanilla-Cake.jpg"),
                      ),
                      const SizedBox(width: 5,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Vanillla Cake    ", style: TextStyle(fontSize: 28,),textAlign: TextAlign.start),

                        ],
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(35)),
                        child: Container(
                          height: 50,
                          width: 50,
                          color: const Color(0xFFFF8A00),
                          child: const Icon(Icons.exit_to_app_outlined,size: 38,color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Cupcake()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: const Color(0xFFFFFFFF),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          //color: Colors.yellowAccent,
                          child: Image.asset(fit: BoxFit.fitHeight,"assets/images/UI - 04/Cupcake.jpg"),
                        ),
                        const SizedBox(width: 5,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cupcake    ", style: TextStyle(fontSize: 28,),textAlign: TextAlign.start),

                          ],
                        ),
                        ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(35)),
                          child: Container(
                            height: 50,
                            width: 50,
                            color: const Color(0xFFFF8A00),
                            child: const Icon(Icons.exit_to_app_outlined,size: 38,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: const Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        //color: Colors.yellowAccent,
                        child: Image.asset(fit: BoxFit.fitHeight,"assets/images/UI - 04/Pancake.jpg"),
                      ),
                      const SizedBox(width: 5,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pancake      ", style: TextStyle(fontSize: 28,),textAlign: TextAlign.start),

                        ],
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(35)),
                        child: Container(
                          height: 50,
                          width: 50,
                          color: const Color(0xFFFF8A00),
                          child: const Icon(Icons.exit_to_app_outlined,size: 38,color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: const Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        //color: Colors.yellowAccent,
                        child: Image.asset(fit: BoxFit.fitHeight,"assets/images/UI - 04/Donut.jpg"),
                      ),
                      const SizedBox(width: 5,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Donut    ", style: TextStyle(fontSize: 28,),textAlign: TextAlign.start),

                        ],
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(35)),
                        child: Container(
                          height: 50,
                          width: 50,
                          color: const Color(0xFFFF8A00),
                          child: const Icon(Icons.exit_to_app_outlined,size: 38,color: Colors.white),
                        ),
                      ),
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
