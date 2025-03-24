import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
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
            height: 20,
          ),
          UiHelper.CustomText(
              text: "Print Store",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 32,
              fontfamily: 'bold'),
          UiHelper.CustomText(
              text: "Blinkit ensures secure prints at every stage",
              color: Color(0XFF9C9C9C),
              fontweight: FontWeight.bold,
              fontsize: 14),
          SizedBox(
            height: 54,
          ),
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              height: 163,
              width: 375,
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      UiHelper.CustomText(
                          text: "Documents",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold"),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      UiHelper.CustomImage(img: "star.png"),
                      SizedBox(
                        width: 10,
                      ),
                      UiHelper.CustomText(
                          text: "Price starting at rs 3/page",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 14)
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      UiHelper.CustomImage(img: "star.png"),
                      SizedBox(
                        width: 10,
                      ),
                      UiHelper.CustomText(
                          text: "Paper quality: 70 GSM",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 14)
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      UiHelper.CustomImage(img: "star.png"),
                      SizedBox(
                        width: 10,
                      ),
                      UiHelper.CustomText(
                          text: "Single side prints",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 14)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        height: 40,
                        width: 125,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            child: Text(
                              "Upload Files",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              child: UiHelper.CustomImage(img: "print.png"),
              right: 20,
              bottom: 40,
            )
          ])
        ],
      )),
    );
  }
}
