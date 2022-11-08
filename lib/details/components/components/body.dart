import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_flutter_ui/details/components/components/recommends_plant.dart';
import 'package:plant_app_flutter_ui/details/components/components/title_with_more_btn.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "More",
            press: () {},
            word: 'Recommended',
          ),
          RecommendsPlant(size: size),
          TitleWithMoreBtn(
            title: "More",
            press: () {},
            word: 'Featured Plants',
          ),
          FeaturePlants(size: size)
        ],
      ),
    );
  }
}

