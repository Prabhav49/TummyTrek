import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tummy_trek/utils/dimensions.dart';
import 'package:tummy_trek/widgets/app_icon.dart';
import 'package:tummy_trek/widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget{
  const RecommendedFoodDetail({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                 color: Colors.white,
                child: Center(child: BigText(size: Dimensions.font26, text: "Italian Side")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.yellow,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/image/pastries.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text("Yummy Tasty Pastries"),
          )
        ],
      ),
    );
  }
}