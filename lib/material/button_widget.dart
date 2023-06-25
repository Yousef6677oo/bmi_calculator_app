import 'package:bmi/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String digitName;
  Function onClick;
  ButtonWidget({required this.digitName,required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {
        onClick(digitName);
      },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: const CircleBorder(), //<-- SEE HERE
          padding: const EdgeInsets.all(20),
        ), child: Text(digitName,style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.w700,color: AppColors.darkGreyColor
        ),),),
    ));
  }
}
