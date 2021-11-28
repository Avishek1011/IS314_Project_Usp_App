
import 'package:flutter/material.dart';


import 'Issuereport.dart';


// Homepage
enum ImageSourceType { gallery, camera }

class ISSUEHomePage extends StatelessWidget {
  void _handleURLButtonPress(BuildContext context, var type) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SelectImage(type)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Picker Example"),
        ),

        body: Center(
          child: Column(
            children: [


              MaterialButton(
                color: Colors.blue,
                child: Text(
                  "Report a Issue",
                  style: TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  _handleURLButtonPress(context, ImageSourceType.camera);
                },
              ),
            ],
          ),
        ));
  }
}