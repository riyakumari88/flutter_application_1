import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/appratmentlayout.dart';
import 'package:image_picker/image_picker.dart';

import 'addpic.dart';
import 'main.dart';

class ProfilePaage extends StatefulWidget {
  const ProfilePaage({super.key});

  @override
  State<ProfilePaage> createState() => _ProfilePaageState();
}

class _ProfilePaageState extends State<ProfilePaage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Text('PROFILE '),
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: InkWell(
                  onTap: () async {
                    final image = await ImagePicker()
                        .getImage(source: ImageSource.gallery);
                    if (image != null) {
                      // image mil jayega
                    }
                  },
                  child: Icon(Icons.person_2_rounded, size: 80)),
            ),
            Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 25),
                    child:
                        Text('Name:', style: TextStyle(color: Colors.purple)),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Tracy'),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 280, top: 10),
                child:
                    Text('About me:', style: TextStyle(color: Colors.purple)),
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 160),
                child: Text('SDE at Byteridge,in Hyderabad'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text('Preferred Living Arrangement : 2bhk'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text('Ideal Roommate Age Range: 25-30 years'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text('Budget: 12k -15k',
                    style: TextStyle(color: Colors.purple)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text('Habits:', style: TextStyle(color: Colors.purple)),
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text('A morning person'),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 140),
                child: Text('meditate every day and likes cooking'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text('About Ideal Roommate:',
                    style: TextStyle(color: Colors.purple)),
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text('Works in the Byteridge company'),
              ),
            ),
            SizedBox(height: 0),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text('Vegetarian'),
              ),
            ),
            SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Container(
                child: Text('Should know cooking'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text('Social Media:'),
                ),
              ),
            ),
            SizedBox(height: 60),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NextPage()),
                      );
                    },
                    child: Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(' Matching profiles',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold))),
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const picAdd()),
                    );
                  },
                  child: Container(
                      height: 50,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text('LOAD ROOM PICTURES',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
