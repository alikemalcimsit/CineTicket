import 'package:flutter/material.dart';
import 'package:ticket_buy/text_constant.dart';

import 'color_constant.dart';

class CenterTextIcon extends StatefulWidget {
  const CenterTextIcon({Key? key}) : super(key: key);

  @override
  _CenterTextIconState createState() => _CenterTextIconState();
}

class _CenterTextIconState extends State<CenterTextIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 8, bottom: 25, top: 8),
      child: Row(
        children: [
          Text(
            TextConstant.instance.centerTitle,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ColorConstant.instance.textColor),
          ),
          const Spacer(),
          Text(
            TextConstant.instance.centerText,
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: ColorConstant.instance.textColor),
          ),
          GestureDetector(
            child: Icon(
              Icons.arrow_forward_ios,
              color: ColorConstant.instance.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
