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
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // The ship picture and slogan
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
                child: Image.asset("assets/ship.png", height: 742, width: 686,),
              ),
              Positioned(
                left: 13,
                bottom: 15,
                child: Container(
                    margin: const EdgeInsets.only(left: 100),
                    width: 450,
                    child: const Text(
                      "Explore Demo Limited's Premier Logistics and Freight Services",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 23),
                    )),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/Logo.png", height: 40, width: 40,),
                    const SizedBox(width: 25,),
                    Image.asset("assets/DEMO.png", height: 80, width: 80,),
                  ],
                ),

                // Login details
                Center(
                  child: SizedBox(
                    height: 550,
                    width: 550,
                    child: Card(
                      elevation: 5,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 60),
                              child: Image.asset('assets/Logo2.png', height: 80, width: 80,)
                          ),
                          const SizedBox(height: 8,),
                          const Text("Welcome Back",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          const SizedBox(height: 8,),
                          Text("We are glad to see you",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[600]),
                          ),
                          const SizedBox(height: 35,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 65.0,
                                right: 65.0
                            ),
                            child: TextField(
                              onTap: () {},
                              decoration: const InputDecoration(
                                label: Text("Username", style: TextStyle(color: Colors.grey),),
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
                              left: 65.0,
                              right: 65.0,
                            ),
                            child: TextField(
                              onTap: () {},
                              decoration: const InputDecoration(
                                  label: Text("Password", style: TextStyle(color: Colors.grey),),
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
                            width: 323,
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
                          Text("Forget Password ?", style: TextStyle(color: Colors.grey[600], fontSize: 12),)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 63,),
                const Center(
                    child: Text("© 2024 DEMO GROUP, All Rights Reserved", style: TextStyle(color: Colors.grey, fontSize: 10),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
