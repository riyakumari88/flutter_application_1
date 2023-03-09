import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/addpicbycameraandgallery.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:image_picker/image_picker.dart';

import 'main.dart';

//the add picture page
class picAdd extends StatefulWidget {
  const picAdd({super.key});

  @override
  State<picAdd> createState() => _picAddState();
}

class _picAddState extends State<picAdd> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          child: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                  child: Stack(
                children: <Widget>[
                  Image.asset('assets/images/hall2.png',
                      width: 400, height: 600),
                ],
              )),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePaage()),
                    );
                  },
                  child: Positioned(
                    top: 30,
                    right: 350,
                    child: Icon(Icons.person_2_rounded),
                  ),
                ),
              ),
              Positioned(
                top: 548,
                right: 200,
                child: Text('Have a look over the rooms',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Positioned(
                top: 30,
                left: 350,
                child: Icon(Icons.home),
              ),
              Positioned(
                top: 460,
                left: 350,
                child: Icon(Icons.save_as_outlined),
              ),
              Positioned(
                top: 500,
                left: 350,
                child: Icon(Icons.favorite),
              ),
              Positioned(
                top: 540,
                left: 350,
                child: Icon(Icons.share),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 40),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddPaages()),
                      );
                    },
                    child: Text('ADD PICTURES')),
              ),
              IconButton(
                  //work on this
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddPaages()),
                    );
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: Icon(Icons.double_arrow_rounded),
                  ))
            ],
          ),
        ],
      )),
    ));
  }
}
