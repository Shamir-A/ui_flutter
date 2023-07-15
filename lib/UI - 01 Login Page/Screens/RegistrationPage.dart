import 'package:flutter/material.dart';
import 'package:ui_flutter/UI%20-%2001%20Login%20Page/Screens/LoginPage.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {

  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
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
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 30),
                child: Image(
                    height: 250,
                    width: 250,
                    image: AssetImage(
                        "assets/images/UI - 01/Profiling_Monochromatic.png")),
              ),
              const Text(
                "Register!",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                "Create your account",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(
                    prefixIconColor: Colors.white,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.person_outline),
                    hintText: "Username",
                    labelText: "Username",
                    labelStyle: const TextStyle(color: Colors.white),
                    hintStyle: const TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(
                    prefixIconColor: Colors.white,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.email_outlined),
                    hintText: "Email address",
                    labelText: "Email address",
                    labelStyle: const TextStyle(color: Colors.white),
                    hintStyle: const TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(
                    prefixIconColor: Colors.white,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.key),
                    hintText: "Password",
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.white),
                    hintStyle: const TextStyle(color: Colors.white70),
                    suffixIconColor: Colors.white,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined)),
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
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
                          //validateSignUp();
                        },
                        child: const Text("REGISTER")),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white70),
                      )),
                  TextButton(
                      onPressed: () {
                        //Get.to(Login3());
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: const Text(
                        "Login Here",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
