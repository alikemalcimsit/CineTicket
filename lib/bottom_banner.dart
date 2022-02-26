import 'package:flutter/material.dart';
import 'package:ticket_buy/image_constant.dart';

class BottomBanner extends StatelessWidget {
  const BottomBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.34,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          buildBottomBanner(context, ImageConstant.bottomBanner1),
          buildBottomBanner(context, ImageConstant.bottomBanner2),
          buildBottomBanner(context, ImageConstant.bottomBanner3),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

Container buildBottomBanner(BuildContext context, String image) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    ),
    width: MediaQuery.of(context).size.width * 0.4,
  );
}
