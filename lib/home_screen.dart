import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const String routName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final itemCount = 5;

  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.notification_important,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset("assets/images/logo.png"),
        title: Text(
          "Mody",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Hello , Sara Rose",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "How are you feeling today ?",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/love.png"),
                Image.asset("assets/images/cool.png"),
                Image.asset("assets/images/happy.png"),
                Image.asset("assets/images/sad.png"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Feature",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "See More",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff027A48),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Color(0xff027A48),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 170,
              width: 800,
              child: PageView.builder(
                itemCount: itemCount,
                controller: controller,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      height: 168,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffECFDF3),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Positive vibes",
                                    style: TextStyle(
                                      color: Color(0xff344054),
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Boost your mood with positive vibes \n"
                                    "positive vibes",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.green,
                                        ),
                                        child: IconButton(
                                          iconSize: 25,
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        "10 Min",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Image.asset(
                                          "assets/images/woman.jpeg"),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: itemCount,
                effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   // child: Container(
            //   //   width: 326,
            //   //   height: 168,
            //   //   decoration: BoxDecoration(
            //   //       borderRadius: BorderRadius.circular(15),
            //   //       color: Color(0xffECFDF3)),
            //   //   child: Row(
            //   //     children: [
            //   //       Expanded(
            //   //         child: Padding(
            //   //           padding: const EdgeInsets.only(left: 10.0),
            //   //           child: Column(
            //   //             mainAxisAlignment: MainAxisAlignment.center,
            //   //             crossAxisAlignment: CrossAxisAlignment.start,
            //   //             children: [
            //   //               Text(
            //   //                 "Positive vibes",
            //   //                 style: TextStyle(
            //   //                   color: Color(0xff344054),
            //   //                   fontSize: 16,
            //   //                 ),
            //   //               ),
            //   //               SizedBox(
            //   //                 height: 10,
            //   //               ),
            //   //               Text(
            //   //                 "Boost your mood with positive vibes \n"
            //   //                 "positive vibes",
            //   //                 style: TextStyle(
            //   //                   fontSize: 16,
            //   //                   color: Colors.black,
            //   //                 ),
            //   //               ),
            //   //               Row(
            //   //                 children: [
            //   //                   Container(
            //   //                     decoration: BoxDecoration(
            //   //                       borderRadius: BorderRadius.circular(25),
            //   //                       color: Colors.green,
            //   //                     ),
            //   //                     child: IconButton(
            //   //                       onPressed: () {},
            //   //                       icon: Icon(
            //   //                         Icons.play_arrow,
            //   //                         color: Colors.white,
            //   //                       ),
            //   //                     ),
            //   //                   ),
            //   //                   SizedBox(
            //   //                     width: 25,
            //   //                   ),
            //   //                   Text(
            //   //                     "10 Min",
            //   //                     style: TextStyle(
            //   //                       fontSize: 14,
            //   //                       color: Colors.black,
            //   //                     ),
            //   //                   )
            //   //                 ],
            //   //               ),
            //   //             ],
            //   //           ),
            //   //         ),
            //   //       ),
            //   //       Expanded(
            //   //         child: Padding(
            //   //           padding: const EdgeInsets.only(left: 8.0),
            //   //           child: Column(
            //   //             mainAxisAlignment: MainAxisAlignment.center,
            //   //             crossAxisAlignment: CrossAxisAlignment.center,
            //   //             children: [
            //   //               Center(
            //   //                   child: Image.asset("assets/images/woman.jpeg")),
            //   //             ],
            //   //           ),
            //   //         ),
            //   //       ),
            //   //     ],
            //   //   ),
            //   // ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exercise",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "See More",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff027A48),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Color(0xff027A48),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF9F5FF),
                    ),
                    width: 151,
                    height: 55,
                    child: Row(
                      children: [
                        Image.asset("assets/images/Vector.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Relaxation",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF9F5FF),
                    ),
                    width: 151,
                    height: 55,
                    child: Row(
                      children: [
                        Image.asset("assets/images/Vectorrr.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Meditation",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFAF5),
                    ),
                    width: 151,
                    height: 46,
                    child: Row(
                      children: [
                        Image.asset("assets/images/Vectorr.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Beathing",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffF0F9FF),
                    ),
                    width: 151,
                    height: 46,
                    child: Row(
                      children: [
                        Image.asset("assets/images/Group.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Yoga",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        iconSize: 20,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: ""),
        ],
      ),
    );
  }
}
