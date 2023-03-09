import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'profileupdatepage.dart';

void main() {
  runApp(const Registration());
}

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool checkBoxValue = false;
  String? gender;
  void dropDownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        String dropdownValue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Builder(builder: (context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 248, 248, 244)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 23, right: 23, top: 35),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        // border: Border.all(),
                        color: Color.fromRGBO(99, 89, 232, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Enter Name',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, right: 23),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromRGBO(99, 89, 232, 1),
                        // border: Border.all(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, right: 23),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromRGBO(99, 89, 232, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration.collapsed(
                            hintText: 'E-Mail ID',
                            fillColor: Color.fromRGBO(99, 89, 232, 1),
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, right: 23),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromRGBO(99, 89, 232, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Location',
                            fillColor: Color.fromRGBO(99, 89, 232, 1),
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 45,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            validator: (value) {
                              if (value == '') {
                                return 'Please Enter the Age';
                              }
                              return null;
                            },
                            decoration: InputDecoration.collapsed(
                              hintText: 'AGE',
                              //  fillColor: Color.fromARGB(255, 72, 105, 160),
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                          color: Color.fromRGBO(99, 89, 232, 1),
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Container(
                        width: 150,
                        height: 45,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Gender',
                              // fillColor: Color.fromARGB(255, 147, 2, 184),
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                          color: Color.fromRGBO(99, 89, 232, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 231, 210, 236),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DropdownButton(
                      hint: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Languages',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      dropdownColor: Color.fromARGB(255, 246, 243, 252),
                      items: const [
                        DropdownMenuItem(
                            child: Text('hindi'), value: ("hindi")),
                        DropdownMenuItem(
                            child: Text('english'), value: ("english")),
                        DropdownMenuItem(
                            child: Text('other'), value: ("other")),
                      ],
                      onChanged: dropDownCallback,
                      iconSize: 20,
                      iconEnabledColor: Color.fromARGB(255, 5, 5, 5),
                      icon: const Icon(Icons.add_circle_outline_rounded),
                      isExpanded: true,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 40,
                  ),
                  // Radio(
                  //     value: 'radio buton',
                  //     groupValue: "goup",
                  //     onChanged: (value) {
                  //       print(value);
                  //     }),
                  RadioListTile(
                      title: Text("Finding a roommate"),
                      value: "roommate",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                          print("you are chosing  BUTTON");
                        });
                      }),
                  RadioListTile(
                      title: Text("Finding a room"),
                      value: "room",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                          print("you are chosing  BUTTON");
                        });
                      }),

                  SizedBox(height: 20),
                  ButtonTheme(
                    minWidth: 100.0,
                    height: 400.0,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NextPaage()),
                          );
                        },
                        child: Text(' update Profile')),
                  ),
                  SizedBox(height: 60),
                  ButtonTheme(
                    minWidth: 600,
                    height: 600,
                    //buttonColor: Colors.purpleAccent,
                    child: ElevatedButton(
                        onPressed: () {},
                        child:
                            Text('REGISTER', style: TextStyle(fontSize: 25))),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }));
  }
}

// //2nd layout

// class NextPaage extends StatefulWidget {
//   const NextPaage({super.key});

//   @override
//   State<NextPaage> createState() => _NextPaageState();
// }

// class _NextPaageState extends State<NextPaage> {
//   void dropDownCallback(String? selectedValue) {
//     if (selectedValue is String) {
//       setState(() {
//         String dropdownValue = selectedValue;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Profile Update ')),
//         body: SingleChildScrollView(
//           child: Container(
//             child: Column(
//               children: [
//                 Center(
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 10),
//                     child: Container(
//                         height: 45,
//                         width: 300,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             color: Color.fromRGBO(99, 89, 232, 1)),
//                         child: Center(
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 10),
//                             child: TextField(
//                               textAlign: TextAlign.left,
//                               decoration: InputDecoration.collapsed(
//                                 hintText: 'Name',
//                                 hintStyle: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         )),
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Center(
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 10),
//                     child: Container(
//                         height: 45,
//                         width: 300,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             color: Color.fromRGBO(99, 89, 232, 1)),
//                         child: Center(
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 10),
//                             child: TextField(
//                               textAlign: TextAlign.left,
//                               decoration: InputDecoration.collapsed(
//                                 hintText: 'Mobile Number',
//                                 hintStyle: TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         )),
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Container(
//                   height: 45,
//                   width: 300,
//                   decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 231, 210, 236),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: DropdownButton(
//                     hint: Padding(
//                       padding: const EdgeInsets.only(left: 8),
//                       child: Text(
//                         'Prefferd Living Arrangemet',
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     dropdownColor: Color.fromARGB(255, 246, 243, 252),
//                     items: const [
//                       DropdownMenuItem(child: Text('1bhk'), value: ("2bhk")),
//                       DropdownMenuItem(child: Text('2bhk'), value: ("2bhk")),
//                       DropdownMenuItem(child: Text('other'), value: ("other")),
//                     ],
//                     onChanged: dropDownCallback,
//                     iconSize: 20,
//                     iconEnabledColor: Color.fromARGB(255, 5, 5, 5),
//                     icon: const Icon(Icons.add_circle_outline_rounded),
//                     isExpanded: true,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 50),
//                       child: Container(
//                         height: 45,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color.fromRGBO(99, 89, 232, 1),
//                         ),
//                         child: DropdownButton(
//                           hint: Padding(
//                             padding: const EdgeInsets.only(left: 10),
//                             child: Text('Roomate age range',
//                                 style: TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white)),
//                           ),
//                           dropdownColor: Color.fromARGB(255, 243, 233, 233),
//                           items: [
//                             DropdownMenuItem(
//                                 child: Text('Above 45'), value: ("Above 45")),
//                             DropdownMenuItem(
//                                 child: Text('40 - 45'), value: ("40 - 45")),
//                             DropdownMenuItem(
//                                 child: Text('35 - 40'), value: ("35 - 40")),
//                             DropdownMenuItem(
//                                 child: Text('30- 35'), value: ("30 - 35")),
//                             DropdownMenuItem(
//                                 child: Text('Below 30'), value: ("Below 30")),
//                           ],
//                           onChanged: dropDownCallback,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 45,
//                     ),
//                     Center(
//                       child: Container(
//                         height: 45,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color.fromRGBO(99, 89, 232, 1),
//                         ),
//                         child: DropdownButton(
//                           hint: Padding(
//                             padding: const EdgeInsets.only(left: 10),
//                             child: Text('Budget',
//                                 style: TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white)),
//                           ),
//                           dropdownColor: Color.fromARGB(255, 243, 233, 233),
//                           items: [
//                             DropdownMenuItem(
//                                 child: Text('Above 30k'), value: ("Above 30k")),
//                             DropdownMenuItem(
//                                 child: Text('25k - 30k'), value: ("25k - 30k")),
//                             DropdownMenuItem(
//                                 child: Text('20k- 25k'), value: ("20k - 25k")),
//                             DropdownMenuItem(
//                                 child: Text('Below 20k'), value: ("Below 20k")),
//                           ],
//                           onChanged: dropDownCallback,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Container(
//                   height: 45,
//                   width: 300,
//                   decoration: BoxDecoration(
//                     color: Color.fromRGBO(99, 89, 232, 1),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Center(
//                     child: TextField(
//                       decoration: InputDecoration.collapsed(
//                           hintText: 'Ideal Roommate Ocuupation',
//                           hintStyle: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 12,
//                             color: Colors.white,
//                           )),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Container(
//                   height: 45,
//                   width: 300,
//                   decoration: BoxDecoration(
//                     color: Color.fromRGBO(99, 89, 232, 1),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Center(
//                     child: TextField(
//                       decoration: InputDecoration.collapsed(
//                           hintText: 'Social Media Link',
//                           hintStyle: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontSize: 12,
//                           )),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 50),
//                       child: Container(
//                         alignment: Alignment(20, 0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color.fromRGBO(99, 89, 232, 1),
//                         ),
//                         child: DropdownButton(
//                             hint: Text('Gender(prefernce)',
//                                 style: TextStyle(color: Colors.white)),
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                             items: [
//                               DropdownMenuItem(
//                                   child: Text('Male'), value: ("Male")),
//                               DropdownMenuItem(
//                                   child: Text('Female'), value: ("Female")),
//                               DropdownMenuItem(
//                                   child: Text('both'), value: ("Both")),
//                             ],
//                             onChanged: dropDownCallback),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 45,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Color.fromRGBO(99, 89, 232, 1),
//                       ),
//                       child: DropdownButton(
//                           hint: Text('Hobbies',
//                               style: TextStyle(
//                                 color: Colors.white,
//                               )),
//                           style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold),
//                           items: [
//                             DropdownMenuItem(
//                                 child: Text('Singing'), value: ("Singing")),
//                             DropdownMenuItem(
//                                 child: Text('Dancing'), value: ("Dancing")),
//                             DropdownMenuItem(
//                                 child: Text('Painting'), value: ("Painting")),
//                             DropdownMenuItem(
//                                 child: Text('Cooking'), value: ("cooking")),
//                             DropdownMenuItem(
//                                 child: Text('Travelling'), value: ("Painting")),
//                           ],
//                           onChanged: dropDownCallback),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Container(
//                     height: 45,
//                     width: 300,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Color.fromRGBO(99, 89, 232, 1),
//                     ),
//                     child: Center(
//                         child: TextField(
//                             decoration: InputDecoration.collapsed(
//                       hintText: 'About Ideal Roommate',
//                       hintStyle: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     )))),
//                 SizedBox(height: 10),
//                 Container(
//                     height: 45,
//                     width: 300,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Color.fromRGBO(99, 89, 232, 1),
//                     ),
//                     child: Center(
//                         child: TextField(
//                             decoration: InputDecoration.collapsed(
//                       hintText: 'ABOUT Me!',
//                       hintStyle: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     )))),
//                 SizedBox(height: 40),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const ProfilePaage()),
//                     );
//                   },
//                   child: Container(
//                     child: Center(
//                       child: Text('SUBMIT',
//                           style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold)),
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Color.fromRGBO(99, 89, 232, 1),
//                     ),
//                     height: 59,
//                     width: 90,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// //profile page

// class ProfilePaage extends StatefulWidget {
//   const ProfilePaage({super.key});

//   @override
//   State<ProfilePaage> createState() => _ProfilePaageState();
// }

// class _ProfilePaageState extends State<ProfilePaage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Padding(
//             padding: const EdgeInsets.only(left: 150),
//             child: Text('PROFILE '),
//           ),
//           backgroundColor: Colors.lightBlueAccent,
//         ),
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(right: 280),
//               child: InkWell(
//                   onTap: () async {
//                     final image = await ImagePicker()
//                         .getImage(source: ImageSource.gallery);
//                     if (image != null) {
//                       // image mil jayega
//                     }
//                   },
//                   child: Icon(Icons.person_2_rounded, size: 80)),
//             ),
//             Row(
//               children: [
//                 Container(
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 10, left: 25),
//                     child:
//                         Text('Name:', style: TextStyle(color: Colors.purple)),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Container(
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 10),
//                     child: Text('Tracy'),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 280, top: 10),
//                 child:
//                     Text('About me:', style: TextStyle(color: Colors.purple)),
//               ),
//             ),
//             SizedBox(height: 5),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 160),
//                 child: Text('SDE at Byteridge,in Hyderabad'),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 130),
//                 child: Text('Preferred Living Arrangement : 2bhk'),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 100),
//                 child: Text('Ideal Roommate Age Range: 25-30 years'),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 250),
//                 child: Text('Budget: 12k -15k',
//                     style: TextStyle(color: Colors.purple)),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 300),
//                 child: Text('Habits:', style: TextStyle(color: Colors.purple)),
//               ),
//             ),
//             SizedBox(height: 5),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 250),
//                 child: Text('A morning person'),
//               ),
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 140),
//                 child: Text('meditate every day and likes cooking'),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 200),
//                 child: Text('About Ideal Roommate:',
//                     style: TextStyle(color: Colors.purple)),
//               ),
//             ),
//             SizedBox(height: 5),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 170),
//                 child: Text('Works in the Byteridge company'),
//               ),
//             ),
//             SizedBox(height: 0),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 300),
//                 child: Text('Vegetarian'),
//               ),
//             ),
//             SizedBox(height: 0),
//             Padding(
//               padding: const EdgeInsets.only(right: 230),
//               child: Container(
//                 child: Text('Should know cooking'),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 0),
//                 child: Padding(
//                   padding: const EdgeInsets.only(right: 280),
//                   child: Text('Social Media:'),
//                 ),
//               ),
//             ),
//             SizedBox(height: 60),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 40, left: 40),
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const NextPage()),
//                       );
//                     },
//                     child: Container(
//                         height: 50,
//                         width: 120,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                             color: Colors.blue,
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Text(' Matching profiles',
//                             style: TextStyle(
//                                 fontSize: 12, fontWeight: FontWeight.bold))),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const picAdd()),
//                     );
//                   },
//                   child: Container(
//                       height: 50,
//                       width: 150,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Text('LOAD ROOM PICTURES',
//                           style: TextStyle(
//                               fontSize: 12, fontWeight: FontWeight.bold))),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// //new page for selecting the apartment

// class NextPage extends StatefulWidget {
//   const NextPage({super.key});

//   @override
//   State<NextPage> createState() => _NextPageState();
// }

// class _NextPageState extends State<NextPage> {
//   @override
//   Widget build(BuildContext context) {
//     var items;
//     List data = [
//       {
//         "title": "building one",
//         "location": "Dehli",
//       },
//       {"title": " buoilding 2", "location": "bihar"}
//     ];
//     print(data[0]['title']);
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 15),
//                   child: Container(
//                       height: 60,
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
//                       )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 0, right: 0, left: 230),
//                   child: Container(
//                       height: 10,
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
//                       )),
//                 ),
//                 Container(
//                     height: 10,
//                     child: IconButton(
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
//                     )),
//               ],
//             ),
//             SizedBox(
//               height: 5,
//             ),
//             Row(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const ProfilePaage()),
//                     );
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 10),
//                     child: Container(
//                       child: Center(
//                         child: Text('Compatibilty',
//                             style: TextStyle(
//                                 fontSize: 10,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold)),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Color.fromRGBO(99, 89, 232, 1),
//                       ),
//                       height: 40,
//                       width: 100,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const ProfilePaage()),
//                     );
//                   },
//                   child: Container(
//                     child: Center(
//                       child: Text('Location',
//                           style: TextStyle(
//                               fontSize: 10,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold)),
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Color.fromRGBO(99, 89, 232, 1),
//                     ),
//                     height: 40,
//                     width: 100,
//                   ),
//                 ),
//                 SizedBox(width: 20),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const ProfilePaage()),
//                     );
//                   },
//                   child: Container(
//                     child: Center(
//                       child: Text('Language',
//                           style: TextStyle(
//                               fontSize: 10,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold)),
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Color.fromRGBO(99, 89, 232, 1),
//                     ),
//                     height: 40,
//                     width: 100,
//                   ),
//                 ),
//               ],
//             ),
//             ListView.builder(
//               itemCount: items.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   height: 20,
//                   width: 20,
//                   child: Text(items[index]["title"]),
//                 );
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// //the add picture page
// class picAdd extends StatefulWidget {
//   const picAdd({super.key});

//   @override
//   State<picAdd> createState() => _picAddState();
// }

// class _picAddState extends State<picAdd> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       body: Container(
//           child: Column(
//         children: [
//           Stack(
//             children: <Widget>[
//               Container(
//                   child: Stack(
//                 children: <Widget>[
//                   Image.asset('assets/images/hall2.png',
//                       width: 400, height: 600),
//                 ],
//               )),
//               Padding(
//                 padding: const EdgeInsets.only(top: 30.0, left: 10),
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const ProfilePaage()),
//                     );
//                   },
//                   child: Positioned(
//                     top: 30,
//                     right: 350,
//                     child: Icon(Icons.person_2_rounded),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 548,
//                 right: 200,
//                 child: Text('Have a look over the rooms',
//                     style: TextStyle(fontWeight: FontWeight.bold)),
//               ),
//               Positioned(
//                 top: 30,
//                 left: 350,
//                 child: Icon(Icons.home),
//               ),
//               Positioned(
//                 top: 460,
//                 left: 350,
//                 child: Icon(Icons.save_as_outlined),
//               ),
//               Positioned(
//                 top: 500,
//                 left: 350,
//                 child: Icon(Icons.favorite),
//               ),
//               Positioned(
//                 top: 540,
//                 left: 350,
//                 child: Icon(Icons.share),
//               )
//             ],
//           ),
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 130, top: 40),
//                 child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const AddPaages()),
//                       );
//                     },
//                     child: Text('ADD PICTURES')),
//               ),
//               IconButton(
//                   //work on this
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const AddPaages()),
//                     );
//                   },
//                   icon: Padding(
//                     padding: const EdgeInsets.only(top: 25, left: 20),
//                     child: Icon(Icons.double_arrow_rounded),
//                   ))
//             ],
//           ),
//         ],
//       )),
//     ));
//   }
// }

// //finally adding
// class AddPaages extends StatefulWidget {
//   const AddPaages({super.key});

//   @override
//   State<AddPaages> createState() => _AddPaagesState();
// }

// class _AddPaagesState extends State<AddPaages> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 15),
//                   child: Container(
//                       height: 60,
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
//                       )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 0, right: 0, left: 230),
//                   child: Container(
//                       height: 10,
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
//                       )),
//                 ),
//                 Container(
//                     height: 10,
//                     child: IconButton(
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
//                     )),
//               ],
//             ),
//             Container(
//                 height: 400,
//                 width: 600,
//                 child: Image.asset('assets/images/room2.png')),
//             Container(
//               height: 50,
//               width: 300,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 10, left: 5),
//                 child: TextField(
//                   decoration: InputDecoration.collapsed(
//                     hintText: 'Roomy Name',
//                     hintStyle: TextStyle(
//                       fontSize: 14,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadiusDirectional.circular(15),
//                 color: Color.fromRGBO(99, 89, 232, 1),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 100,
//               width: 300,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 10, left: 5),
//                 child: TextField(
//                     decoration: InputDecoration.collapsed(
//                   hintText: 'Details',
//                   hintStyle: TextStyle(
//                     fontSize: 16,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )),
//               ),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadiusDirectional.circular(15),
//                 color: Color.fromRGBO(99, 89, 232, 1),
//               ),
//             ),
//             SizedBox(height: 30),
//             Padding(
//               padding: const EdgeInsets.only(left: 60),
//               child: Row(
//                 children: [
//                   IconButton(
//                       onPressed: () async {
//                         final cameras = await availableCameras();
//                         final camera = cameras.first;
//                         final controllers =
//                             CameraController(camera, ResolutionPreset.medium);
//                         await controllers.initialize();

//                         final image = await controllers.takePicture;

//                         // yhn image mil jayega;
//                       },
//                       icon: Icon(Icons.camera_alt_outlined, size: 20)),
//                   SizedBox(width: 40),
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                         child: Center(
//                             child: Text('ADD',
//                                 style: TextStyle(color: Colors.white))),
//                         height: 60,
//                         width: 100,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Color.fromRGBO(99, 89, 232, 1))),
//                   ),
//                   SizedBox(width: 40),
//                   IconButton(
//                       onPressed: () async {
//                         final image = await ImagePicker()
//                             .getImage(source: ImageSource.gallery);
//                         if (image != null) {
//                           // image mil jayega
//                         }
//                       },
//                       icon: Icon(Icons.file_copy_outlined, size: 20)),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
