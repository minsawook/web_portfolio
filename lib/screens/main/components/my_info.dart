import 'package:flutter/material.dart';
import '../../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: kDefaultCardShadow,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage("assets/images/민사욱.jpg"),
          ),
          SizedBox(height: 10),
          Text(
            "민사욱",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(height: 10),
          Text(
            "Mobaile App Developer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w200,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
