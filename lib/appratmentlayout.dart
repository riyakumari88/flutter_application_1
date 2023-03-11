import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:image_picker/image_picker.dart';

import 'main.dart';
import 'profileupdatepage.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  List data = [
    {
      "title": "Surya Appartment",
      "location": "Delhi",
      "image":
          "https://user-images.githubusercontent.com/88928888/224468969-be4c0995-2e03-44b8-bdae-a7168afd972c.png",
    },
    {
      "title": "Fonixx",
      "location": "Noida",
      "image":
          "https://user-images.githubusercontent.com/88928888/224469556-263df2de-e6e9-4943-bf1f-ce7b90e67920.png",
    },
    {
      "title": "Mishra Bhawan",
      "location": "Patna",
      "image":
          "https://user-images.githubusercontent.com/88928888/224469450-8332675a-3a54-4f0e-8f10-3ad93ef816bf.png",
    },
    {
      "title": "Dwarika flat",
      "location": "Roorkee",
      "image":
          "https://user-images.githubusercontent.com/88928888/224469313-059ee431-2464-432e-a46f-c4980cb953e8.png",
    },
    {
      "title": "Ramkung Appartment",
      "location": "Bihar",
      "image":
          "https://user-images.githubusercontent.com/88928888/224469354-7a15d32b-7254-49f0-b907-d0c8b2d404ac.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Row(
            //   children: [
            //     IconButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const NextPaage()),
            //         );
            //       },
            //       icon: Icon(Icons.home),
            //       color: Colors.black,
            //       iconSize: 22,
            //       splashRadius: 20,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 0, right: 0, left: 230),
            //       child: IconButton(
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => const NextPage()),
            //           );
            //         },
            //         icon: Icon(Icons.location_pin),
            //         color: Colors.black,
            //         iconSize: 23,
            //       ),
            //     ),
            //     IconButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const ProfilePaage()),
            //         );
            //       },
            //       icon: Icon(Icons.contact_emergency),
            //       color: Colors.black,
            //       iconSize: 20,
            //       splashRadius: 20,
            //     ),
            //   ],
            // ),
            Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.grey.withOpacity(.1),
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * .03,
                  right: screenWidth * .03,
                  top: screenHeight * .08,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * .15,
                      width: screenWidth,
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: screenHeight * .14,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    "https://img.freepik.com/free-vector/abstract-background-with-squares_23-2148995948.jpg?w=996&t=st=1678303876~exp=1678304476~hmac=dab28b01894434757ef663e17ca4938e3b60c616c190fa2dfa0c17eb095fa18d",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: screenWidth,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: screenHeight * .11,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * .07,
                      width: screenWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: screenHeight * .014,
                            width: screenWidth * .01,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black),
                          ),
                          Container(
                            width: screenWidth * .02,
                          ),
                          const Text(
                            "Check out these",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * .6,
                      width: screenWidth,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              height: screenHeight * .3,
                              width: screenWidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: screenHeight * .25,
                                    width: screenWidth,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Image.network(
                                        data[index]["image"],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: screenHeight * .25,
                                    width: screenWidth,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                                sigmaX: 3, sigmaY: 3),
                                            child: Container(
                                              height: screenHeight * .06,
                                              width: screenWidth * .8,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.white
                                                      .withOpacity(.3)),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: screenWidth * .015,
                                                    right: screenWidth * .015),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height:
                                                          screenHeight * .06,
                                                      width: screenWidth * .4,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height:
                                                                screenHeight *
                                                                    .01,
                                                            width: screenWidth *
                                                                .01,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          Container(
                                                            width: screenWidth *
                                                                .02,
                                                          ),
                                                          Text(
                                                            data[index]
                                                                ["title"],
                                                            style: const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          screenHeight * .04,
                                                      width: screenWidth * .2,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .all(Colors
                                                                        .black),
                                                            elevation:
                                                                MaterialStateProperty
                                                                    .all(0),
                                                            shape: MaterialStateProperty.all(
                                                                RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10)))),
                                                        child: const Text(
                                                          "continue",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: screenHeight * .02,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class NextPage extends StatefulWidget {
//   const NextPage({super.key});

//   @override
//   State<NextPage> createState() => _NextPageState();
// }

// class _NextPageState extends State<NextPage> {
//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     double screenWidth = MediaQuery.of(context).size.width;
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           height: screenHeight,
//           width: screenWidth,
//           color: Color.fromRGBO(158, 158, 158, 1).withOpacity(.1),
//           child: Padding(
//             padding: EdgeInsets.only(top: 20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: IconButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const NextPaage()),
//                           );
//                         },
//                         icon: Icon(Icons.home),
//                         color: Colors.black,
//                         iconSize: 22,
//                         splashRadius: 20,
//                       ),
//                     ),
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(top: 0, right: 0, left: 230),
//                       child: IconButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const NextPage()),
//                           );
//                         },
//                         icon: Icon(Icons.location_pin),
//                         color: Colors.black,
//                         iconSize: 23,
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const ProfilePaage()),
//                         );
//                       },
//                       icon: Icon(Icons.contact_emergency),
//                       color: Colors.black,
//                       iconSize: 20,
//                       splashRadius: 20,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
                 
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
