import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key, required this.title, required this.country, required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: Row(
        children: [
          Column(
            children: [
              RichText(
                text: TextSpan(
                  text: "$title",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold),
                ),
              ),
              RichText(
                text: TextSpan(
                    text: country,
                    style: TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300)),
              ),
            ],
          ),

          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
