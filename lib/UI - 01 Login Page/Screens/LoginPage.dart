import 'package:flutter/material.dart';
import 'package:ui_flutter/UI%20-%2001%20Login%20Page/Screens/RegistrationPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: Image(
                    height: 250,
                    width: 250,
                    image:
                    AssetImage("assets/images/UI - 01/Profiling_Isometric.png")),
              ),
              const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "WELCOME!",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
              const Center(
                  child: Text(
                    "Login to your account",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(
                    prefixIconColor: Colors.white,
                    fillColor: Colors.white,
                    prefixIcon: const SizedBox(width: 10,child: Icon(Icons.person_outline)),
                    hintText: "Username",
                    labelText: "Username",
                    labelStyle: const TextStyle(color: Colors.white),
                    hintStyle: const TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
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
                    prefixIcon: const SizedBox(width: 10,child: Icon(Icons.key)),
                    hintText: "Password",
                    labelText: "Password",
                    hintStyle: const TextStyle(color: Colors.white70),
                    labelStyle: const TextStyle(color: Colors.white),
                    suffixIconColor: Colors.white,
                    suffixIcon: SizedBox(
                      width: 10,
                      child: IconButton(
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
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.white, width: 5.0),
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
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
                        onPressed: () async {
                          //final userList = await DBFunction.instance.getUser();
                          //findUser(userList);
                        },
                        child: const Text("LOGIN")),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Don't have an account",
                        style: TextStyle(color: Colors.white70),
                      )),
                  TextButton(
                      onPressed: () {
                        //Get.to(Register03());
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegPage()));
                      },
                      child: const Text(
                        "Sign Up Here",
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
