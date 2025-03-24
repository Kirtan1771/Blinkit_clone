import 'package:blinkit_clone/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UiHelper.CustomImage(img: "login_image.png"),
              SizedBox(
                height: 30,
              ),
              UiHelper.CustomImage(img: "LogoImage.png"),
              SizedBox(
                height: 20,
              ),
              UiHelper.CustomText(
                  text: "India's Last Minute App",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                  fontfamily: "bold"),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 220,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      UiHelper.CustomText(
                          text: "Kirtan",
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 15,
                          fontfamily: "regular"),
                      SizedBox(
                        height: 5,
                      ),
                      UiHelper.CustomText(
                          text: "909X78XXXX",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold"),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomNavScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFFE23744),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CustomText(
                                    text: "Login with  ",
                                    color: Colors.white,
                                    fontweight: FontWeight.bold,
                                    fontsize: 14,
                                    fontfamily: "bold"),
                                UiHelper.CustomImage(img: "Zomato.png")
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      UiHelper.CustomText(
                          text:
                              "Access your saved addresses from Zomato automatically!",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 10,
                          fontfamily: "regular"),
                      SizedBox(
                        height: 30,
                      ),
                      UiHelper.CustomText(
                          text: "or login with phone number",
                          color: Color(0XFF269237),
                          fontweight: FontWeight.normal,
                          fontsize: 14)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
