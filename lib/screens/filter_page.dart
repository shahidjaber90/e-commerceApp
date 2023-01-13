import 'package:e_commerce/screens/category_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/card_widget.dart';
import 'package:e_commerce/widgets/colorBox_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: Stack(children: [
        Container(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Container(
                color: ColorConstant.textFieldTextColor,
                height: MediaQuery.of(context).size.height * 0.90,
                width: MediaQuery.of(context).size.width * 100,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
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
                            TextConstant.speakersText,
                            style: TextStyle(
                              color: ColorConstant.blackColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ),
                          ),
                          Image.asset(ImageConstant.options),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 1.00,
                      child: cardCategory2(
                          context,
                          ImageConstant.soundBalance,
                          TextConstant.soundBalanceText,
                          TextConstant.soundBalanceAboutText,
                          0.28, // Height Card Box
                          0.90, // Width Card Box
                          0.45, // Height Main Box
                          1.00, // Width Main Box
                          0.34, // Card Top Direction
                          0.05, // Card Left Direction
                          0.05, // Image Left Direction
                          -0.01, // Image Top Direction
                          0.05, // Text Left Direction
                          0.62, // Text Top Direction
                          0.72, // Product Top Direction
                          0.05, // Product Left Direction
                          0.85, // Indicator Top Direction
                          0.425), // Indicator Left Direction
                    ),
                  ],

                  // Home Indicator
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.013,
                child: Opacity(
                    opacity: 0.05,
                    child: Image.asset(ImageConstant.homeIndicator)),
              ),
            ],
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            // left: 100,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.72,
              width: MediaQuery.of(context).size.width * 1.00,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: ColorConstant.bgColor),
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Image.asset(ImageConstant.topLine),

                    const SizedBox(
                      height: 10,
                    ),

                    // Gender
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.16,
                        width: MediaQuery.of(context).size.width * 1.00,
                        // color: Colors.cyan,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                TextConstant.gender,
                                style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.blackColor),
                              ),
                            ),
                            // SizedBox(height: 24,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 44,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.startedButtonColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    'Men',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'DM Sans'),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 44,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.cardBgColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    'Women',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'DM Sans',
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 44,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.cardBgColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    'Both',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'DM Sans',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(ImageConstant.Line)
                          ],
                        ),
                      ),
                    ), // Gender End

                    // Price Rate Start

                    // const SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 1.00,
                        // color: Colors.cyan,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                TextConstant.priceRate,
                                style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.blackColor),
                              ),
                            ),
                            // SizedBox(height: 24,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(ImageConstant.bar),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 44,
                                      width: 145,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: ColorConstant.cardBgColor),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 14, right: 14),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Min',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'DM Sans',
                                                  color:
                                                      ColorConstant.whiteColor),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down,
                                              color: ColorConstant.whiteColor,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 44,
                                      width: 145,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: ColorConstant.cardBgColor),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 14, right: 14),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Max',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'DM Sans',
                                                  color:
                                                      ColorConstant.whiteColor),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down,
                                              color: ColorConstant.whiteColor,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Price Rate End

                    // Color Box Start

                    // const SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.16,
                        width: MediaQuery.of(context).size.width * 1.00,
                        // color: Colors.cyan,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                TextConstant.Color,
                                style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.blackColor),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                colorBoxIcon(ColorConstant.startedButtonColor,
                                    Icons.check),
                                colorBox(ColorConstant.greenColor),
                                colorBox(ColorConstant.pinkColor),
                                colorBox(ColorConstant.facebookBtnColor),
                                colorBox(ColorConstant.subtitleTextColor),
                                colorBox(ColorConstant.textFieldTextColor),
                              ],
                            ),
                            Image.asset(ImageConstant.Line)
                          ],
                        ),
                      ),
                    ),
                    // Color Box End

                    // const SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.155,
                        width: MediaQuery.of(context).size.width * 1.00,
                        // color: Colors.cyan,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 44,
                                  width: 193,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: ColorConstant.startedButtonColor,
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const CategoryPage()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            ColorConstant.startedButtonColor,
                                        elevation: 0),
                                    child: Text(
                                      TextConstant.apply,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'DM Sans',
                                          letterSpacing: 1,
                                          color: ColorConstant.whiteColor),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 44,
                                  width: 96,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: ColorConstant.cardBgColor,
                                  ),
                                  child: Text(
                                    TextConstant.reset,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'DM Sans',
                                        letterSpacing: 1,
                                        color: ColorConstant.whiteColor),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Button Apply End
                  ],
                ),
              ),
            )),
      ]),
    );
  }
}
