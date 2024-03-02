//import 'dart:html';

//import 'package:flutter/gestures.dart';
//import 'dart:js';

import 'package:bookstore/page/newpage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _Homepagestate();
}

class _Homepagestate extends State<Homepage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text("gdsc BOOKSTORE"),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.search),
          ),
        ],
        //bottom:  /backgroundColor: Colors.black,
      ),
      body: ListView(children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: (Colors.blue),
                    ),
                    height: 50,
                    width: 300,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        hintText: "looking for",
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(231, 23, 118, 187),
                    ),
                    height: 50,
                    width: 50,
                    child: const Icon(Icons.abc, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(230, 128, 147, 239),
                      Color.fromARGB(230, 6, 109, 218),
                      // Color.fromARGB(230, 218, 220, 230)
                    ])),
                height: 150,
                // width: 300,
                child: const Column(
                  children: [
                    Row(children: [Text("sep 23, 2023")]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.pause),
                        Text("today a reader"),
                        Icon(Icons.pause),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  const Text(
                    "categories",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Wrap(
                    children: [
                      Card(
                        color: const Color.fromARGB(58, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children: [
                              Icon(Icons.health_and_safety_outlined),
                              Text("Health")
                            ]),
                          ),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(58, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children: [
                              Icon(Icons.stadium),
                              Text("Health")
                            ]),
                          ),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(58, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children: [
                              Icon(Icons.connected_tv_outlined),
                              Text("Health")
                            ]),
                          ),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(58, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children: [
                              Icon(Icons.history),
                              Text("Health")
                            ]),
                          ),
                        ),
                      ),
                      Card(
                        color: const Color.fromARGB(58, 226, 223, 223),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          constraints: const BoxConstraints(
                              minWidth: 100, maxWidth: 100),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children: [
                              Icon(Icons.science),
                              Text("Health")
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // style: TextStyle(fontSize: 20),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommendation",
                        style: TextStyle(fontSize: 20),
                      ),
                      //SizedBox(width:50 ,),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  //ListView(scrollDirection: HorizontalDragGestureRecognizer,)
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.asset("assets/images/image-2.jpg")),
                            ),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                              Navigator.push(
                                    context,PageTransition(child:const NewBody(), type: PageTransitionType.rightToLeft,duration:const Duration(milliseconds: 1000 ))
                                    );
                              },
                              child: const Text("liwis"),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.asset("assets/images/image-4.jpg")),
                            ),
                          ),
                          const Center(child: Text("blue bird"))
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.asset("assets/images/image-3.jpg")),
                            ),
                          ),
                          const Center(child: Text("blue bird"))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New",
                        style: TextStyle(fontSize: 20),
                      ),
                      //SizedBox(width:50 ,),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  //ListView(scrollDirection: HorizontalDragGestureRecognizer,)
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.asset("assets/images/image-1.jpg")),
                            ),
                          ),
                          const Center(child: Text("blue bird"))
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.asset("assets/images/image-5.jpg")),
                            ),
                          ),
                          const Center(child: Text("blue bird"))
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 100,
                            child: Card(
                              child: ClipRRect(
                                  child:
                                      Image.asset("assets/images/image-6.jpg")),
                            ),
                          ),
                          const Center(child: Text("blue bird"))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ]))
      ]),
    );
  }
}
