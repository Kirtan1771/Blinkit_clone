import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  var groceriesArr = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44.png", "text": "Dairy, bread & \nMilk"},
    {"img": "image 45.png", "text": "Buiscuits & \nBakery"},
    {"img": "image 21.png", "text": "Dry Fruits & \nCereals"},
    {"img": "image 22.png", "text": "Kitchen & \nAppliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomText(
                    text: "Groceries & Kitchen",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 15)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 40,
                  childAspectRatio: 0.7),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 80,
                      width: 71,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0XFFD9EBEB),
                      ),
                      child: UiHelper.CustomImage(
                          img: groceriesArr[index]["img"].toString()),
                    ),
                    UiHelper.CustomText(
                        text: groceriesArr[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10)
                  ],
                );
              },
              itemCount: groceriesArr.length,
            )
          ],
        ),
      ),
    );
  }
}
