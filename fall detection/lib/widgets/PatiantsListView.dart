import 'package:flutter/cupertino.dart';

import '../helper/Styles.dart';

class PatiantsListView extends StatelessWidget {
  const PatiantsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 53,
          height: 53,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/patient.png"),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
          ),
        ),
        SizedBox(height: 15,),
        Text('patient',style: Styles.TextStyle12,)
      ],
    );
  }
}
