import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  var data = [
    {"img": "diyas.png", "text": "Lights, Diyas \n & Candles"},
    {"img": "gifts.png", "text": "Diwali \n Gifts"},
    {"img": "ps4.png", "text": "Appliances \n & Gadgets"},
    {"img": "living.png", "text": "Home \n & Living"},
  ];
  var category = [
    {"img": "candle.png", "text": "Golden Glass \n Wooden Lid Candle (Oudh)"},
    {"img": "jamun.png", "text": "Royal Gulab Jamun \n By Bikano"},
    {"img": "bhujiya.png", "text": "Bikaji Bhujiya"},
  ];

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
                  color: Color(0XFFEC0505),
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
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(color: Colors.white),
            ),
            Container(
              height: 196,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0XFFEC0505)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomImage(img: "fire1.png"),
                      UiHelper.CustomImage(img: "fire2.png"),
                      UiHelper.CustomText(
                        text: "Mega Diwali Sale",
                        color: Colors.white,
                        fontweight: FontWeight.bold,
                        fontsize: 20,
                      ),
                      UiHelper.CustomImage(img: "fire3.png"),
                      UiHelper.CustomImage(img: "fire4.png"),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 10, top: 1, bottom: 1),
                            child: Container(
                              width: 86,
                              height: 108,
                              decoration: BoxDecoration(
                                  color: Color(0XFFEAD3D3),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  UiHelper.CustomText(
                                      text: data[index]["text"].toString(),
                                      color: Colors.black,
                                      fontweight: FontWeight.normal,
                                      fontsize: 10),
                                  UiHelper.CustomImage(
                                      img: data[index]["img"].toString())
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: data.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 1,bottom: 1),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        width: 93,
                        height: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            UiHelper.CustomImage(
                                img: category[index]["img"].toString()),
                            UiHelper.CustomText(
                                text: category[index]["text"].toString(),
                                color: Colors.black,
                                fontweight: FontWeight.bold,
                                fontsize: 10)
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: category.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
