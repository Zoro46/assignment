import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter login Web',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebebeb),
      body: Center(
        child: Container(
          height: 700,
          width: 1200,
          child: Card(
            color: Colors.white,
            child: Row(
              children: [
                // The ship picture and slogan
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 45),
                      child: Container(
                          child: Image.asset("assets/ship.png", fit: BoxFit.cover,)
                      ),
                    ),
                    Positioned(
                      bottom: 35,
                      child: Container(
                          margin: const EdgeInsets.only(left: 70),
                          width: 425,
                          child: const Text(
                            "Explore Demo Limited's Premier Logistics and Freight Services",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 21),
                          )),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 80.0, top: 10),
                        child: Row(
                          children: [
                            Image.asset("assets/Logo.png", height: 25, width: 25,),
                            const SizedBox(width: 25,),
                            Image.asset("assets/DEMO.png", height: 66, width: 66,),
                          ],
                        ),
                      ),

                      // Login details
                      Container(
                        height: 490,
                        width: 425,
                        margin: EdgeInsets.only(top: 40, left: 80),
                        child: Card(
                          elevation: 0.4,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(top: 40),
                                  child: Image.asset('assets/Logo2.png', height: 60, width: 60,)
                              ),
                              const SizedBox(height: 12,),
                              const Text("Welcome Back",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              const SizedBox(height: 5),
                              Text("We are glad to see you",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[600], fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(height: 35,),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 33.0,
                                    right: 33.0
                                ),
                                child: TextField(
                                  onTap: () {},
                                  decoration: const InputDecoration(
                                    label: Text("Username", style: TextStyle(color: Colors.grey, fontSize: 13),),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black12)
                                    )
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 33.0,
                                  right: 33.0,
                                ),
                                child: TextField(
                                  onTap: () {},
                                  decoration: const InputDecoration(
                                      label: Text("Password", style: TextStyle(color: Colors.grey, fontSize: 13),),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black12)
                                      )
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30,),
                              Container(
                                height: 40,
                                width: 348,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color(0xff379fce),
                                        Color(0xff42658e),
                                  ]
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent
                                  ),
                                  ),
                              ),
                              const SizedBox(height: 15,),
                              Text("Forget Password ?", style: TextStyle(color: Color(0xff42658e), fontSize: 12.5),)
                            ],
                          ),
                        ),
                      ),
                      // const SizedBox(height: 75,),
                      Padding(
                        padding: const EdgeInsets.only(left: 200, top: 50),
                        child: Text("© 2024 DEMO GROUP, All Rights Reserved", style: TextStyle(color: Colors.grey[600], fontSize: 10.95),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
