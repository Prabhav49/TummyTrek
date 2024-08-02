import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tummy_trek/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumns extends StatelessWidget{
  final String text;
  const AppColumns({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
                children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.pink, size:20,))
            ),
            SizedBox(width: 6,),
            SmallText(text: "4.5"),
            SizedBox(width: 10,),
            SmallText(text: "1,287"),
            SizedBox(width: 10,),
            SmallText(text: "comments")
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: Colors.yellow),
            SizedBox(width: 8,),
            IconAndTextWidget(icon: Icons.location_on,
                text: "1.7 km",
                iconColor: Colors.greenAccent),
            SizedBox(width: 9,),
            IconAndTextWidget(icon: Icons.access_time_rounded,
                text: "32 min",
                iconColor: Colors.orangeAccent)
          ],
        )
      ],
    );
  }
}