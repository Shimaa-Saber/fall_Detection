import 'package:fall_detection_app/screens/homepage/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);
  static String id = 'notification';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
      Navigator.pushNamed(context, homepageView.id);
        }, icon: Icon(Icons.arrow_back,color: Colors.black87,)),
        title: Text('Notifications',style:TextStyle(
          color: Colors.black87,
          fontSize: 24,
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w700,
          height: 0.06,
        ) ,),
        centerTitle: true,

      ),
    );
  }
}
