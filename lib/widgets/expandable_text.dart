import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tummy_trek/utils/colors.dart';
import 'package:tummy_trek/widgets/small_text.dart';

import '../utils/dimensions.dart';

class ExpandableText extends StatefulWidget{
  final String text;
  const ExpandableText({Key? key, required this.text}) : super (key: key);

  @override
  _ExpandableText createState() => _ExpandableText();
}

class _ExpandableText extends State<ExpandableText>{

  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight/5.63;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }
    else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: secondHalf.isEmpty?SmallText(color:AppColors.pink, size: Dimensions.font16,text: firstHalf):Column(
        children: [
          SmallText(height:1.8, color:AppColors.pink, size:Dimensions.font16, text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: "Show more", color: AppColors.pink),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColors.pink,)
              ],
            ),
          )
        ],
      ),
    );
  }
}