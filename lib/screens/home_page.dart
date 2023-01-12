import 'package:e_commerce/screens/login_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.50,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.topRight,
                          image: AssetImage(ImageConstant.yellowOval))),
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.bottomLeft,
                          image: AssetImage(ImageConstant.greyOval))),
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage(ImageConstant.logo))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage(ImageConstant.greyIndicator))),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.bottomCenter,
                          image: AssetImage(ImageConstant.yellowIndicator))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage(ImageConstant.greyIndicator))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
              alignment: Alignment.center,
              height: 32,
              width: double.infinity,
              child: Text(
                TextConstant.welcome,
                style: const TextStyle(
                    fontSize: 24,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 24,
                  width: double.infinity,
                  child: Text(
                    TextConstant.welcomeSubTitle,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        color: ColorConstant.subtitleTextColor.withOpacity(0.55)),
                  ),
                ),
            
                Container(
                  alignment: Alignment.center,
                  height: 24,
                  width: double.infinity,
                  child: Text(
                    TextConstant.welcomeSubTitle2,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.subtitleTextColor.withOpacity(0.55),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child:
                      buttonFunction(ColorConstant.startedButtonColor, context,const LoginPage(),ImageConstant.forwardArrow),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: Opacity(opacity: 0.05,child: Image.asset(ImageConstant.homeIndicator)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
