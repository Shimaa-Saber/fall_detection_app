import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper/Styles.dart';

class  customAppbar extends StatelessWidget {
  const  customAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 46),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SizedBox(width: 28,),

              IconButton(onPressed: (){},icon: Icon(Icons.menu,color: Colors.black,)),
              SizedBox(width: 80,),
              Text('Homepage',style: Styles.TextStyle18),
              SizedBox(width: 80,),
              IconButton(onPressed: (){},icon: Icon(Icons.search,color: Colors.black,)),
              SizedBox(width: 36,),
            ],
          ),
        ),
      ),
    );
  }
}
