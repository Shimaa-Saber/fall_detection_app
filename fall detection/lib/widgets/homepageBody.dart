import 'package:fall_detection_app/widgets/patiantdetailsListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'PatiantsListView.dart';
import 'customAppbar.dart';

class HomepageViewBody extends StatelessWidget {
  const HomepageViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              customAppbar(),
              SizedBox(height: 3,),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: PatiantsListView(),
                      );
                    },),
          
                ),
              ),
              SizedBox(height: 5,),
              SizedBox(
                height: size.height*20,
                //width: size.width*40,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: DetailesListView(),
                  );
                },),
              )
          
          
            ],
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        elevation: 0,
        // shape: BeveledRectangleBorder(
        //     // borderRadius: BorderRadius.circular(20.0),
        //     // side: BorderSide(color: Colors.blue, width: 2.0, style: BorderStyle.solid)
        //     ),
        // mini: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          height: size.height*0.09,
          child: BottomAppBar(
            notchMargin: 5.0,
            shape: CircularNotchedRectangle(),
            color:  Colors.white10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {  },
                        icon: Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {  },
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {  },
                        icon: Icon(
                          FontAwesomeIcons.solidComment,
                          color: Colors.black,
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {  },
                        icon: Icon(
                          CupertinoIcons.person_solid,
                          color: Colors.black,
                        ),
                      ),

                    ],
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
