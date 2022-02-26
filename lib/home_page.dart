import 'package:flutter/material.dart';
import 'package:ticket_buy/top_banner.dart';

import 'package:ticket_buy/image_constant.dart';
import 'package:ticket_buy/text_constant.dart';
import 'color_constant.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.backgroundColor2,
      appBar: buildAppBar(),
      body: NoonLoopingDemo(),
      bottomNavigationBar: buildBotttomNavigationBar(),
    );
  }

  BottomNavigationBar buildBotttomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        enableFeedback: true,
        unselectedItemColor: ColorConstant.instance.textColor,
        selectedItemColor: ColorConstant.instance.buttonColor,
        iconSize: 30,
        elevation: 0,
        backgroundColor: Colors.black38,
        currentIndex: _selectedIndex,
        onTap: _iconChanger,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Wallet",
            icon: Icon(Icons.account_balance_wallet_rounded),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(Icons.account_circle_rounded),
          ),
        ]);
  }

  void _iconChanger(index) {
    setState(() {
      _selectedIndex = index;
    });
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
            const Icon(
              Icons.location_pin,
            ),
            Text(TextConstant.instance.appBarHeadLine),
            const Spacer(),
            IconButton(
                color: ColorConstant.instance.buttonColor,
                onPressed: () {},
                icon: const Icon(Icons.add_alert_sharp))
          ],
        ));
  }
}
