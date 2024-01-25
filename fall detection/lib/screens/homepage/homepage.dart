import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/homepageBody.dart';

class homepageView extends StatefulWidget {
  const homepageView({Key? key}) : super(key: key);
  static String id = 'homepage';
  @override
  State<homepageView> createState() => _homepageViewState();
}

class _homepageViewState extends State<homepageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomepageViewBody(),
    );
  }
}
