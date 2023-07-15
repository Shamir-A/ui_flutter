import 'package:flutter/material.dart';
import 'package:ui_flutter/UI%20-%2001%20Login%20Page/Screens/LoginPage.dart';
import 'package:ui_flutter/UI%20-%2001%20Login%20Page/Screens/RegistrationPage.dart';


void main() {
  runApp(const MaterialApp(
    useInheritedMediaQuery: true,
    home: LoginHome(),
    debugShowCheckedModeBanner: false,
  ));
}
class LoginHome extends StatelessWidget {
  const LoginHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: const [0.1, 0.5, 0.7, 0.9],
                tileMode: TileMode.clamp,
                colors: [
                  Colors.blue[800]!,
                  Colors.purpleAccent[700]!,
                  Colors.blue[600]!,
                  Colors.blue[400]!,
                ],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50,),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 30),
                  child: Image(
                      height: 250,
                      width: 250,
                      image: AssetImage("assets/images/UI - 01/Profiling_Monochromatic.png")),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Plantly",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
                const Text(
                  "Can't seem to keep a plant alive? ",
                  style: TextStyle(fontSize: 18,color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 60),
                  child: Text(
                    "Lest us help you change that",
                    style: TextStyle(fontSize: 18,color: Colors.white),
                  ),
                ),
                Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.greenAccent,
                            onPrimary: Colors.white,
                            shadowColor: Colors.green,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            minimumSize: const Size(250, 50),
                          ),
                          onPressed: () {
                            //Get.off(Login3());
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                          },
                          child: const Text("LOGIN")),
                    )),
                Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purpleAccent,
                              onPrimary: Colors.white,
                              shadowColor: Colors.purple,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              minimumSize: const Size(250, 50)),
                          onPressed: () {
                            //Get.to(Register03());
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegPage()));
                          },
                          child: const Text("SIGN UP")),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
