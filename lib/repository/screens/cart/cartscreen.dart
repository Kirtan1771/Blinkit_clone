import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "Blinkit in",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 15)
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "16 Minutes",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 25,
                            fontfamily: "bold")
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "Home -",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 15),
                        UiHelper.CustomText(
                            text: " 1354/1 Sector 5-A",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.normal,
                            fontsize: 12)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomTextField(controller: controller)
                  ],
                ),
              ),
              Positioned(
                right: 20,
                top: 40,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          UiHelper.CustomImage(img: "shopping_cart.png"),
          SizedBox(
            height: 20,
          ),
          UiHelper.CustomText(
              text: "Reordering will be easy",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold"),
          UiHelper.CustomText(
              text:
                  "Items you order will show up here so you can buy them again easily.",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 12,
              fontfamily: "normal"),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Bestsellers",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                  fontfamily: "bold")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "milk.png" ),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.only(top: 95, left: 60),
                          child: UiHelper.CustomButton(() {}),
                        ),
                      ),
                      Positioned(
                          child: Padding(
                        padding: EdgeInsets.only(top: 120),
                        child: UiHelper.CustomText(
                            text: "Fresh Milk",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 8),
                      )),
                      Row(
                        children: [
                          Positioned(
                              child: Padding(
                            padding: EdgeInsets.only(top: 135),
                            child: Icon(
                              Icons.alarm,
                              color: Colors.black,
                              size: 20,
                            ),
                          )),
                          SizedBox(
                            width: 5,
                          ),
                          Positioned(
                              child: Padding(
                            padding: EdgeInsets.only(top: 135),
                            child: UiHelper.CustomText(
                                text: "16 MINS",
                                color: Colors.black,
                                fontweight: FontWeight.normal,
                                fontsize: 10),
                          ))
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 60),
                    child: UiHelper.CustomText(
                        text: "₹ 27",
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 20,
                        fontfamily: "bold"),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "tomato.png"),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.only(top: 95, left: 60),
                          child: UiHelper.CustomButton(() {}),
                        ),
                      ),
                      Positioned(
                          child: Padding(
                        padding: EdgeInsets.only(top: 120),
                        child: UiHelper.CustomText(
                            text: "Hybrid Tomato",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 8),
                      )),
                      Row(
                        children: [
                          Positioned(
                              child: Padding(
                            padding: EdgeInsets.only(top: 135),
                            child: Icon(
                              Icons.alarm,
                              color: Colors.black,
                              size: 20,
                            ),
                          )),
                          SizedBox(
                            width: 5,
                          ),
                          Positioned(
                              child: Padding(
                            padding: EdgeInsets.only(top: 135),
                            child: UiHelper.CustomText(
                                text: "16 MINS",
                                color: Colors.black,
                                fontweight: FontWeight.normal,
                                fontsize: 10),
                          ))
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 60),
                    child: UiHelper.CustomText(
                        text: "₹ 37",
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 20,
                        fontfamily: "bold"),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "potato.png"),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.only(top: 95, left: 60),
                          child: UiHelper.CustomButton(() {}),
                        ),
                      ),
                      Positioned(
                          child: Padding(
                        padding: EdgeInsets.only(top: 120),
                        child: UiHelper.CustomText(
                            text: "Potato(Aloo)",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 8),
                      )),
                      Row(
                        children: [
                          Positioned(
                              child: Padding(
                            padding: EdgeInsets.only(top: 135),
                            child: Icon(
                              Icons.alarm,
                              color: Colors.black,
                              size: 20,
                            ),
                          )),
                          SizedBox(
                            width: 5,
                          ),
                          Positioned(
                              child: Padding(
                            padding: EdgeInsets.only(top: 135),
                            child: UiHelper.CustomText(
                                text: "16 MINS",
                                color: Colors.black,
                                fontweight: FontWeight.normal,
                                fontsize: 10),
                          ))
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 60),
                    child: UiHelper.CustomText(
                        text: "₹ 37",
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 20,
                        fontfamily: "bold"),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
