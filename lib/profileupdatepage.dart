import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile.dart';

import 'main.dart';

class NextPaage extends StatefulWidget {
  const NextPaage({super.key});

  @override
  State<NextPaage> createState() => _NextPaageState();
}

class _NextPaageState extends State<NextPaage> {
  void dropDownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        String dropdownValue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Profile Update ')),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        height: 45,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(99, 89, 232, 1)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              textAlign: TextAlign.left,
                              decoration: InputDecoration.collapsed(
                                hintText: 'Name',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        height: 45,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(99, 89, 232, 1)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              textAlign: TextAlign.left,
                              decoration: InputDecoration.collapsed(
                                hintText: 'Mobile Number',
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(height: 5),
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
                        'Prefferd Living Arrangemet',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    dropdownColor: Color.fromARGB(255, 246, 243, 252),
                    items: const [
                      DropdownMenuItem(child: Text('1bhk'), value: ("2bhk")),
                      DropdownMenuItem(child: Text('2bhk'), value: ("2bhk")),
                      DropdownMenuItem(child: Text('other'), value: ("other")),
                    ],
                    onChanged: dropDownCallback,
                    iconSize: 20,
                    iconEnabledColor: Color.fromARGB(255, 5, 5, 5),
                    icon: const Icon(Icons.add_circle_outline_rounded),
                    isExpanded: true,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(99, 89, 232, 1),
                        ),
                        child: DropdownButton(
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Roomate age range',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          dropdownColor: Color.fromARGB(255, 243, 233, 233),
                          items: [
                            DropdownMenuItem(
                                child: Text('Above 45'), value: ("Above 45")),
                            DropdownMenuItem(
                                child: Text('40 - 45'), value: ("40 - 45")),
                            DropdownMenuItem(
                                child: Text('35 - 40'), value: ("35 - 40")),
                            DropdownMenuItem(
                                child: Text('30- 35'), value: ("30 - 35")),
                            DropdownMenuItem(
                                child: Text('Below 30'), value: ("Below 30")),
                          ],
                          onChanged: dropDownCallback,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Center(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(99, 89, 232, 1),
                        ),
                        child: DropdownButton(
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Budget',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          dropdownColor: Color.fromARGB(255, 243, 233, 233),
                          items: [
                            DropdownMenuItem(
                                child: Text('Above 30k'), value: ("Above 30k")),
                            DropdownMenuItem(
                                child: Text('25k - 30k'), value: ("25k - 30k")),
                            DropdownMenuItem(
                                child: Text('20k- 25k'), value: ("20k - 25k")),
                            DropdownMenuItem(
                                child: Text('Below 20k'), value: ("Below 20k")),
                          ],
                          onChanged: dropDownCallback,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(99, 89, 232, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Ideal Roommate Ocuupation',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(99, 89, 232, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Social Media Link',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        alignment: Alignment(20, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(99, 89, 232, 1),
                        ),
                        child: DropdownButton(
                            hint: Text('Gender(prefernce)',
                                style: TextStyle(color: Colors.white)),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            items: [
                              DropdownMenuItem(
                                  child: Text('Male'), value: ("Male")),
                              DropdownMenuItem(
                                  child: Text('Female'), value: ("Female")),
                              DropdownMenuItem(
                                  child: Text('both'), value: ("Both")),
                            ],
                            onChanged: dropDownCallback),
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(99, 89, 232, 1),
                      ),
                      child: DropdownButton(
                          hint: Text('Hobbies',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          items: [
                            DropdownMenuItem(
                                child: Text('Singing'), value: ("Singing")),
                            DropdownMenuItem(
                                child: Text('Dancing'), value: ("Dancing")),
                            DropdownMenuItem(
                                child: Text('Painting'), value: ("Painting")),
                            DropdownMenuItem(
                                child: Text('Cooking'), value: ("cooking")),
                            DropdownMenuItem(
                                child: Text('Travelling'), value: ("Painting")),
                          ],
                          onChanged: dropDownCallback),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                    height: 45,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(99, 89, 232, 1),
                    ),
                    child: Center(
                        child: TextField(
                            decoration: InputDecoration.collapsed(
                      hintText: 'About Ideal Roommate',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )))),
                SizedBox(height: 10),
                Container(
                    height: 45,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(99, 89, 232, 1),
                    ),
                    child: Center(
                        child: TextField(
                            decoration: InputDecoration.collapsed(
                      hintText: 'ABOUT Me!',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )))),
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePaage()),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: Text('SUBMIT',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(99, 89, 232, 1),
                    ),
                    height: 59,
                    width: 90,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
