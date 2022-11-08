import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_flutter_ui/constants.dart';

import 'components/components/buy_now_and_description_tiles.dart';
import 'components/components/icon_card.dart';
import 'components/components/images_and_icons.dart';
import 'components/components/title_and_price.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(),
    );
  }
}

class DetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImagesAndIcons(size: size),
          TitleAndPrice(
            title: 'Angelina',
            country: 'Belgium',
            price: 440,
          ),
          BuyNowandDescriptionTiles(size: size),
          SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}

