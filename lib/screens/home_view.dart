import 'package:e_commerce/screens/addToCard_page.dart';
import 'package:e_commerce/screens/category_page.dart';
import 'package:e_commerce/screens/shipping_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.93,
            width: MediaQuery.of(context).size.width * 100,
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    alignment: Alignment.centerLeft,
                    child: const Icon(Icons.menu)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(
                  // color: Colors.deepPurpleAccent,
                  width: MediaQuery.of(context).size.width * 1.00,
                  // height: MediaQuery.of(context).size.height * 0.38,
                  child: Text(
                    TextConstant.browseText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'DM Sans',
                        color: ColorConstant.subtitleTextColor),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    cardCategory(
                        context,
                        ImageConstant.speakers,
                        TextConstant.itemTitleText,
                        TextConstant.itemAboutText,
                        0.22, // Height Card Box
                        0.48, // Width Card Box
                        0.36, // Height Main Box
                        0.58, // Width Main Box
                        0.28, // Card Top Direction
                        0.08, // Card Left Direction
                        0.09, // Image Left Direction
                        0.08, // Image Top Direction
                        0.09, // Text Left Direction
                        0.54,
                        0.62), // Text Top Direction
                    cardCategory(
                        context,
                        ImageConstant.headPhone,
                        TextConstant.headPhoneText,
                        TextConstant.headPhoneAboutText,
                        0.20,
                        0.36,
                        0.34,
                        0.40,
                        0.28,
                        0.08,
                        0.065,
                        0.08,
                        0.164,
                        0.54,
                        0.62),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Card(
                  elevation: 0,
                  color: ColorConstant.textFieldTextColor.withOpacity(0.60),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.001,
                    color: ColorConstant.bgColor,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1.00,
                  child: Text(
                    TextConstant.recommendedText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'DM Sans',
                        color: ColorConstant.subtitleTextColor),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    cardCategory(
                        context,
                        ImageConstant.beosound,
                        TextConstant.beosoundText,
                        TextConstant.beosoundPriceText,
                        0.26, // Height Card Box
                        0.40, // Width Card Box
                        0.28, // Height Main Box
                        0.50, // Width Main Box
                        0.06, // Card Top Direction
                        0.08, // Card Left Direction
                        0.09, // Image Left Direction
                        0.01, // Image Top Direction
                        0.09, // Text Left Direction
                        0.46,
                        0.568), // Text Top Direction
                    cardCategory(
                        context,
                        ImageConstant.beolit,
                        TextConstant.beolitText,
                        TextConstant.beolitPriceText,
                        0.26, // Height Card Box
                        0.40, // Width Card Box
                        0.28, // Height Main Box
                        0.50, // Width Main Box
                        0.06, // Card Top Direction
                        0.02, // Card Left Direction
                        0.03, // Image Left Direction
                        0.01, // Image Top Direction
                        0.03, // Text Left Direction
                        0.46,
                        0.568)
                  ],
                ),



                SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
            
          ),

                GNav(tabs: [
                  GButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeView()));
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
                        builder: (context) => const AddToCard()));
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
              ],
            ),
          ),
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
