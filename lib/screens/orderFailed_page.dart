

import 'package:e_commerce/screens/home_view.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/button_widget.dart';
import 'package:e_commerce/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class OrderFailedPage extends StatelessWidget {
  const OrderFailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.88,
            width: MediaQuery.of(context).size.width * 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_outlined)),
                      Text(
                        TextConstant.orderComplete,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                            fontFamily: 'DM Sans',
                            color: ColorConstant.blackColor),
                      ),
                      Image.asset(ImageConstant.menuShape),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.16),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: ColorConstant.pinkColor
                        ),
                        child: Image.asset(ImageConstant.orderFailed),
                      ),
                      const SizedBox(height: 24,),
                      Text(TextConstant.orderFailed,style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'DM Sans0',
                        color: ColorConstant.blackColor
                      ),),
                      const SizedBox(height: 10,),
                      Text(TextConstant.orderFailedInfo,style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DM Sans0',
                        color: ColorConstant.blackColor.withOpacity(0.60)
                      ),),
                    ],
                  ),
                ),

             

                Padding(
                  padding: const EdgeInsets.only(top: 96,left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(ImageConstant.warning),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                      Text(TextConstant.doNotWorry,textAlign: TextAlign.center,style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DM Sans',
                        color: ColorConstant.blackColor
                      ),),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                      Text(TextConstant.calmText,textAlign: TextAlign.center,style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DM Sans',
                        color: ColorConstant.blackColor.withOpacity(0.60),
                      ),),
                    ],
                  )
                ),

              

                    SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
                    buttonFunctionReverse(TextConstant.reviewPayment, ColorConstant.startedButtonColor, 
                    context, const HomeView(), ImageConstant.arrowLongLeft)

              ],
            ),
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height * 0.033,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.013,
            child: Opacity(
                opacity: 0.05, child: Image.asset(ImageConstant.homeIndicator)),
          ),
        ],
      ),
    );
  }
}