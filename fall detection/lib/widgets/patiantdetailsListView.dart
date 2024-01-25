import 'package:fall_detection_app/helper/Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DetailesListView extends StatelessWidget {
  const DetailesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 328,
        height: 384,
        decoration: ShapeDecoration(
          color: Color(0xFFF9F9F9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.98),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x11171A1F),
              blurRadius: 1,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),BoxShadow(
              color: Color(0x1E171A1F),
              blurRadius: 2,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 3,
              top: 0,
              child: Container(
                width: 317,
                height: 71,
                decoration: ShapeDecoration(
                  color: Color(0xFFFFFFFE),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x11171A1F),
                      blurRadius: 1,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    ),BoxShadow(
                      color: Color(0x1E171A1F),
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 51,
                      top: 17.22,
                      child: Text(
                        'Patient you follow',
                        style: Styles.TextStyle12
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 9,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Image 188.png"),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 220,
                      top: 19.22,
                      child: Text(
                        '5 min. ago',
                        style: TextStyle(
                          color: Color(0xFF9095A1),
                          fontSize: 12,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          height: 0.14,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 292,
                      top: 18,
                      child: Container(
                        width: 19,
                        height: 18,
                        child: Icon(Icons.more_horiz),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              left: 3,
              top: 283,
              child: Container(
                width: 317,
                height: 98,
                decoration: ShapeDecoration(
                  color: Color(0xFFFFFFFE),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x11171A1F),
                      blurRadius: 1,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    ),BoxShadow(
                      color: Color(0x1E171A1F),
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),

                child: Stack(
                  children: [
                    Positioned(
                      left: 14,
                      top: 16.22,
                      child: Text(
                        'I need help in this location',
                        style:Styles.TextStyle12
                      ),
                    ),
                    Positioned(
                      left: 111,
                      top: 61.22,
                      child: Text(
                        'Comment',
                        style: Styles.TextStyle12
                      ),
                    ),
                    Positioned(
                      left: 7,
                      top: 59,
                      child: Container(
                        width: 21,
                        height: 10,
                      child: Icon((FontAwesomeIcons.solidHeart),color: Colors.black,),
                      ),
                    ),
                    Positioned(
                      left: 85,
                      top: 60,
                      child: Container(
                        width: 19,
                        height: 19,
                        child: Icon(FontAwesomeIcons.solidComment,color: Colors.black,),
                      ),
                    ),
                    Positioned(
                      left: 35,
                      top: 59.22,
                      child: Text(
                        'Like',
                        style: Styles.TextStyle12
                      ),
                    ),
                    Positioned(
                      left: 246,
                      top: 34.22,
                      child: Text(
                        'More',
                        style: Styles.TextStyle12
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 63,
              child: Container(
                width: 321,
                height: 227,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Image 188.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
