import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tummy_trek/utils/dimensions.dart';
import 'package:tummy_trek/widgets/app_icon.dart';

import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget{
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodimgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/pastries.jpg"
                    )
                  )
                ),
          )),
          Positioned(
            top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icon.arrow_back_ios),
                  AppIcon(icon: Icon.shopping_cart_outlined)
                ],
          )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodimgSize-20,
              child: Container(

                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Italian Side"),
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
                ),
          ))
        ],
      ),
    );
  }
}