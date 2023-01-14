import 'package:e_commerce/screens/category_page.dart';
import 'package:e_commerce/screens/home_view.dart';
import 'package:e_commerce/screens/mycart_page.dart';
import 'package:e_commerce/screens/orderreview_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({super.key});

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.70,
                width: MediaQuery.of(context).size.width * 1.00,
                decoration: BoxDecoration(
                  color: ColorConstant.startedButtonColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Image.asset(ImageConstant.profile),
                    const SizedBox(height: 14),
                    Text(
                      TextConstant.userName,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DM Sans',
                          color: ColorConstant.blackColor),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      TextConstant.userEmail,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DM Sans',
                          color: ColorConstant.blackColor),
                    ),
                  ],
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width * 0.075,
                  top: MediaQuery.of(context).size.height * 0.325,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.39,
                    width: MediaQuery.of(context).size.width * 0.88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorConstant.bgColor),
                  )),
              Positioned(
                  left: MediaQuery.of(context).size.width * 0.075,
                  top: MediaQuery.of(context).size.height * 0.325,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.39,
                    width: MediaQuery.of(context).size.width * 0.88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 6),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                TextConstant.orderNo,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'DM Sans',
                                    color: ColorConstant.blackColor),
                              ),
                              Text(
                                TextConstant.timeDeliver,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'DM Sans',
                                    color: ColorConstant.purpleColor),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                cardOrderFunction(
                                    ColorConstant.cardBgColor,
                                    ImageConstant.beosound,
                                    TextConstant.beosoundText),
                                cardOrderFunction(
                                    ColorConstant.cardBgColor,
                                    ImageConstant.base,
                                    TextConstant.beosoundDots),
                                cardOrderFunction(
                                    ColorConstant.cardBgColor,
                                    ImageConstant.colorHeadphone,
                                    TextConstant.beoPlayH)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Text(
                            TextConstant.orderWay,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'DM Sans',
                                color: ColorConstant.blackColor),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            TextConstant.orderArrive,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color:
                                    ColorConstant.blackColor.withOpacity(0.60)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.043,
                          ),
                          Container(
                            height: 32,
                            width: 145,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: ColorConstant.startedButtonColor),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OrderReviewPage()));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        ColorConstant.startedButtonColor,
                                    elevation: 0),
                                child: Text(
                                  TextConstant.track,
                                  style: TextStyle(
                                      color: ColorConstant.whiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                      fontFamily: 'DM Sans'),
                                )),
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(ImageConstant.userIcon),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.70,
                  color: ColorConstant.bgColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        TextConstant.account,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'DM Sans',
                            color: ColorConstant.blackColor),
                      ),
                      Text(
                        TextConstant.accountInfo,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DM Sans',
                            color: ColorConstant.blackColor.withOpacity(0.60)),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  alignment: Alignment.centerRight,
                  child: Image.asset(ImageConstant.arrowRight),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 16,
          ),
          Image.asset(ImageConstant.Line),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          // G NAvbar
          GNav(selectedIndex: 3, tabs: [
            GButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
              },
              icon: Icons.home_outlined,
              iconColor: ColorConstant.blackColor,
              style: GnavStyle.oldSchool,
              iconActiveColor: ColorConstant.blackColor,
              text: '   Home',
              textColor: ColorConstant.blackColor,
              backgroundColor: ColorConstant.startedButtonColor,
              iconSize: 24,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(left: 10, top: 10),
              textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM Sans'),
            ),
            GButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CategoryPage()));
              },
              icon: Icons.search,
              iconColor: ColorConstant.blackColor,
              style: GnavStyle.oldSchool,
              iconActiveColor: ColorConstant.blackColor,
              text: '   Search',
              textColor: ColorConstant.blackColor,
              backgroundColor: ColorConstant.startedButtonColor,
              iconSize: 24,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(left: 10, top: 10),
              textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM Sans'),
            ),
            GButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyCardPage()));
              },
              icon: LineIcons.store,
              iconColor: ColorConstant.blackColor,
              style: GnavStyle.oldSchool,
              iconActiveColor: ColorConstant.blackColor,
              text: '   Order',
              textColor: ColorConstant.blackColor,
              backgroundColor: ColorConstant.startedButtonColor,
              iconSize: 24,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(left: 10, top: 10),
              textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM Sans'),
            ),
            GButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShippingPage()));
              },
              icon: Icons.person_outline_outlined,
              iconColor: ColorConstant.blackColor,
              style: GnavStyle.oldSchool,
              iconActiveColor: ColorConstant.blackColor,
              text: '   User',
              textColor: ColorConstant.blackColor,
              backgroundColor: ColorConstant.startedButtonColor,
              iconSize: 24,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(left: 10, top: 10),
              textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM Sans'),
            ),
          ]),

          // Home Indicator
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
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
