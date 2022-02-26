import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:ticket_buy/color_constant.dart';
import 'package:ticket_buy/image_constant.dart';

final List<Widget> topBannerSlider = [
  const TopBanners(
    title: "Watch Anytime\n" "Anywhere",
    description: "USD 3\$",
    buttontext: "Click here",
  ),
  const TopBanners(
    title: "Watch Anytime\n" "Anywhere",
    description: "USD 3\$",
    buttontext: "Click here",
  ),
  const TopBanners(
    title: "Watch Anytime\n" "Anywhere",
    description: "USD 3\$",
    buttontext: "Click here",
  ),
];

class TopBanners extends StatelessWidget {
  final String title;

  final String description;

  final String buttontext;

  const TopBanners({
    Key? key,
    required this.buttontext,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildTopBannerArea(context);
  }

  Padding buildTopBannerArea(BuildContext context) {
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
              Padding(
                padding: const EdgeInsets.only(
                  left: 135.0,
                  top: 40,
                ),
                child: Image.asset(ImageConstant.topBarBaanner),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 1),
                  buildTopBannerTitle(context),
                  const Spacer(
                    flex: 4,
                  ),
                  buildTopBannerDescription(context),
                  const Spacer(
                    flex: 2,
                  ),
                  buildTopBannerButton(),
                  const Spacer(
                    flex: 1,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildTopBannerButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 5),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text(buttontext),
        color: ColorConstant.instance.buttonColor,
        onPressed: () {},
      ),
    );
  }

  Padding buildTopBannerDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Text(
        description,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: ColorConstant.instance.textColor),
      ),
    );
  }

  Padding buildTopBannerTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0, top: 20),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: ColorConstant.instance.textColor),
      ),
    );
  }
}

class NoonLoopingDemo extends StatelessWidget {
  const NoonLoopingDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.34,
        child: CarouselSlider(
          options: CarouselOptions(
            scrollPhysics: const BouncingScrollPhysics(),
            aspectRatio: 2,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
            initialPage: 1,
          ),
          items: topBannerSlider,
        ),
      ),
    );
  }
}
