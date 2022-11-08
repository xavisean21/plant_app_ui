import 'package:flutter/material.dart';

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FeaturedPlantCard(
              size: size,
              image: 'assets/images/bottom_img_1.png',
              press: () {},
            ),
            FeaturedPlantCard(
              size: size,
              image: 'assets/images/bottom_img_2.png',
              press: () {},
            ),
          ],
        ));
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard(
      {Key? key, required this.size, required this.image, required this.press})
      : super(key: key);

  final Size size;
  final String image;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        width: size.width * 0.6,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
