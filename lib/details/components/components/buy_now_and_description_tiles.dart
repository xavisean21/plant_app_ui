import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuyNowandDescriptionTiles extends StatelessWidget {
  const BuyNowandDescriptionTiles({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 64,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20)))),
            onPressed: () {},
            child: Text(
              "Buy Now",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        Expanded(
            child: TextButton(
              onPressed: () {},
              child: Text("Description"),
            ))
      ],
    );
  }
}
