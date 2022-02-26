import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ticket_buy/color_constant.dart';
import 'package:ticket_buy/image_constant.dart';

final List<Widget> topBannerSlider = [
  const TopBanners(
    title: "Nonton Dimana Saja\n" + "Kapan Saja",
    description: "Rp.20,000",
    buttontext: "Klik Disini",
  ),
  const TopBanners(
    title: "Nonton Dimana Saja\n" + "Kapan Saja",
    description: "Rp.20,000",
    buttontext: "Klik Disini",
  ),
  const TopBanners(
    title: "Nonton Dimana Saja\n" + "Kapan Saja",
    description: "Rp.20,000",
    buttontext: "Klik Disini",
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
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 7, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(flex: 1),
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: ColorConstant.instance.textColor),
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    Text(
                      description,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: ColorConstant.instance.textColor),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(buttontext),
                      color: ColorConstant.instance.buttonColor,
                      onPressed: () {},
                    ),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ),
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
      backgroundColor: ColorConstant.instance.backgroundColor2,
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
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
