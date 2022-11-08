import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/details/components/components/title_with_customer_under_line.dart';
import '../../../constants.dart';
import 'body.dart';

class TitleWithMoreBtn extends StatelessWidget {
 final String title , word ;
final Function() press;


  const TitleWithMoreBtn({super.key, required this.title, required this.press, required this.word});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          TitleWithCustomerUnderline(
            text: word,
          ),
          Spacer(),
          TextButton(
            onPressed: press,
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}