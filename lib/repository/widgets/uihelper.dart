import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontfamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontWeight: fontweight,
          fontFamily: fontfamily ?? "regular",
          color: color),
    );
  }

  static CustomTextField(
      {required TextEditingController controller}) {
    return Container(
      height: 40,
      width: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Color(0XFFC5C5C5))),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: "Search \"ice-cream\"",
            prefixIcon: Icon(Icons.search , color: Colors.black,),
            suffixIcon: Icon(Icons.mic,color: Colors.black),
            border: InputBorder.none

        ),
      ),
    );
  }

  static CustomButton(VoidCallback callback){
    return Container(
      height: 25,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.green,
          width: 2
        ),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Center(
        child: Text("Add", style: TextStyle(
          fontSize: 10,
          color: Colors.green
        ),),
      ),
    );
  }
}
