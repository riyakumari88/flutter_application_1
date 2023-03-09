import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:image_picker/image_picker.dart';

import 'main.dart';
import 'profileupdatepage.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    var items;
    List data = [
      {
        "title": "building one",
        "location": "Dehli",
      },
      {"title": " buoilding 2", "location": "bihar"}
    ];
    print(data[0]['title']);
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                      height: 60,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NextPaage()),
                          );
                        },
                        icon: Icon(Icons.home),
                        color: Colors.black,
                        iconSize: 22,
                        splashRadius: 20,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, right: 0, left: 230),
                  child: Container(
                      height: 10,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NextPage()),
                          );
                        },
                        icon: Icon(Icons.location_pin),
                        color: Colors.black,
                        iconSize: 23,
                      )),
                ),
                Container(
                    height: 10,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePaage()),
                        );
                      },
                      icon: Icon(Icons.contact_emergency),
                      color: Colors.black,
                      iconSize: 20,
                      splashRadius: 20,
                    )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePaage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Container(
                      child: Center(
                        child: Text('Compatibilty',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(99, 89, 232, 1),
                      ),
                      height: 40,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(width: 10),
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
                      child: Text('Location',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(99, 89, 232, 1),
                    ),
                    height: 40,
                    width: 100,
                  ),
                ),
                SizedBox(width: 20),
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
                      child: Text('Language',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(99, 89, 232, 1),
                    ),
                    height: 40,
                    width: 100,
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 20,
                  width: 20,
                  child: Text(items[index]["title"]),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
