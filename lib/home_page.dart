import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ticket_buy/carousel_demo.dart';
import 'package:ticket_buy/image_constant.dart';
import 'package:ticket_buy/text_constant.dart';
import 'color_constant.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cardInformation = ["sdsdf", "dsfdsf"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.backgroundColor2,
      appBar: buildAppBar(),
      body: NoonLoopingDemo(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(ImageConstant.appBarCircleIcon),
            ),
            const Spacer(),
            const Icon(Icons.location_pin),
            Text(TextConstant.instance.appBarHeadLine),
            const Spacer(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.add_alert_sharp))
          ],
        ));
  }
}
