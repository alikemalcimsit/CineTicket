import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ticket_buy/color_constant.dart';

final List<Widget> topBannerSlider = [
  TopBanners(),
];

class TopBanners extends StatelessWidget {
  const TopBanners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: ColoredBox(
          color: ColorConstant.instance.cardBackgroundColor,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoonLoopingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        child: CarouselSlider(
          options: CarouselOptions(
            scrollPhysics: const BouncingScrollPhysics(),
            aspectRatio: 2,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 2,
          ),
          items: topBannerSlider,
        ),
      ),
    );
  }
}
