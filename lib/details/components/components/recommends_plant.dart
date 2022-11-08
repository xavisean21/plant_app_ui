import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/details/details_screen.dart';

import '../../../constants.dart';


class RecommendsPlant extends StatelessWidget {
  const RecommendsPlant({
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
          RecommendPlantCard(
            size: size,
            image: 'assets/images/image_1.png',
            title: 'KEVIN',
            country: 'NIGERIA',
            price: 440,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecommendPlantCard(
            size: size,
            image: 'assets/images/img_main.png',
            title: 'VANESSA',
            country: 'NIGERIA',
            price: 440,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecommendPlantCard(
            size: size,
            image: 'assets/images/image_2.png',
            title: 'XENIA',
            country: 'FRANCE',
            price: 440,
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));},
          ),
          RecommendPlantCard(
            size: size,
            image: 'assets/images/image_3.png',
            title: 'ALMA',
            country: 'GREECE',
            price: 440,
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));},
          ),
          RecommendPlantCard(
            size: size,
            image: 'assets/images/bottom_img_2.png',
            title: 'NEVILLE',
            country: 'ENGLAND',
            price: 440,
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));},
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image, title, country;
  final int price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor),
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                            text: "$country".toUpperCase(),
                            style:
                            TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                      ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
