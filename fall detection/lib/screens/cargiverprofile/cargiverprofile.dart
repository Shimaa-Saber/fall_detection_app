import 'package:fall_detection_app/helper/Styles.dart';
import 'package:fall_detection_app/widgets/customAppbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cargiverprofile extends StatelessWidget {
  const Cargiverprofile({Key? key}) : super(key: key);
  static String id = 'CargiverProfile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        titleTextStyle: Styles.TextStyle16,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.person_solid,),color: Colors.black,)
        ],
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
