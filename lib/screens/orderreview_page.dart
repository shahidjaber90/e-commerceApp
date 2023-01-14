import 'package:e_commerce/screens/mycart_page.dart';
import 'package:e_commerce/screens/paymentSuccessful_page.dart';
import 'package:e_commerce/screens/shipping_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/button_widget.dart';
import 'package:e_commerce/widgets/card_widget.dart';
import 'package:e_commerce/widgets/colorBox_widget.dart';
import 'package:flutter/material.dart';


class OrderReviewPage extends StatefulWidget {
  const OrderReviewPage({super.key});

  @override
  State<OrderReviewPage> createState() => _OrderReviewPageState();
}

class _OrderReviewPageState extends State<OrderReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.90,
            width: MediaQuery.of(context).size.width * 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
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
                        TextConstant.orderReview,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'DM Sans',
                            color: ColorConstant.blackColor),
                      ),
                      Image.asset(ImageConstant.menuShape),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14, top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TextConstant.products,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: ColorConstant.blackColor,
                            fontFamily: 'DM Sans'),
                      ),
                      Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: ColorConstant.blackColor,
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardOrderFunction(ColorConstant.cardBgColor,
                          ImageConstant.beosound, TextConstant.beosoundText),
                      cardOrderFunction(ColorConstant.cardBgColor,
                          ImageConstant.base, TextConstant.beosoundDots),
                      cardOrderFunction(ColorConstant.cardBgColor,
                          ImageConstant.colorHeadphone, TextConstant.beoPlayH),
                      cardOrderFunction(ColorConstant.cardBgColor,
                          ImageConstant.beoPlay, TextConstant.beoPlayH),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 14, top: 40),
                  child: Row(
                    children: [
                      Text(
                        TextConstant.shippingC,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'DM Sans',
                            color: ColorConstant.blackColor.withOpacity(0.40),
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 24, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset(ImageConstant.location),
                            const SizedBox(width: 16),
                            Text(
                              TextConstant.shippingAddress,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'DM Sans',
                                  color: ColorConstant.blackColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 24,
                        width: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorConstant.startedButtonColor),
                        child: Text(
                          TextConstant.change,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorConstant.blackColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'DM Sans'),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                // Card Shipping Start

                Container(
                    height: 78,
                    width: 305,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                            color: ColorConstant.cardBgColor, width: 2)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 24,
                            child: Image.asset(ImageConstant.cartStore),
                          ),
                          SizedBox(
                            height: 54,
                            width: 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  TextConstant.standard,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'DM Sans',
                                      color: ColorConstant.blackColor),
                                ),
                                Text(
                                  TextConstant.days,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: ColorConstant.blackColor
                                          .withOpacity(0.60)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 22,
                            width: 9,
                            // color: Colors.green,
                            child: Image.asset(ImageConstant.arrowDown),
                          ),
                        ])),

                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 14, top: 26),
                  child: Row(
                    children: [
                      Text(
                        TextConstant.payment,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'DM Sans',
                            color: ColorConstant.blackColor.withOpacity(0.40),
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14, top: 16),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.065,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                        color: ColorConstant.blackColor,
                        borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.07,
                              ),
                              Image.asset(ImageConstant.masterCard),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.07,
                              ),
                              Text(
                                TextConstant.cardNumber,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.whiteColor),
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 24,
                          width: 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: ColorConstant.startedButtonColor),
                          child: Text(
                            TextConstant.change,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorConstant.blackColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'DM Sans'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TextConstant.shippingSmall,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DM Sans',
                          color: ColorConstant.textFieldTextColor,
                        ),
                      ),
                      Text(
                        TextConstant.free,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DM Sans',
                          color: ColorConstant.textFieldTextColor,
                        ),
                      ),
                    ],
                  ),
                ),

                 Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TextConstant.total,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DM Sans',
                          color: ColorConstant.blackColor,
                        ),
                      ),
                      Text(
                        TextConstant.totalPrice,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DM Sans',
                          color: ColorConstant.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),

                 const SizedBox(height: 50,),
                    buttonFunction(TextConstant.placeOrder,ColorConstant.startedButtonColor,
                     context,const PaymentSuccessfulPage(), ImageConstant.arrowLongRight),

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
