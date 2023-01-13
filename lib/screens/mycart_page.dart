import 'package:e_commerce/screens/category_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MyCardPage extends StatefulWidget {
  const MyCardPage({super.key});

  @override
  State<MyCardPage> createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
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
            height: MediaQuery.of(context).size.height * 0.82,
            width: MediaQuery.of(context).size.width * 100,
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 1.00,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                        right: 14,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back_outlined)),
                              Text(TextConstant.myCart,style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'DM Sans',
                                letterSpacing: 1,
                                color: ColorConstant.blackColor
                              ),),
                          
                          Image.asset(ImageConstant.shoppingBag),
                        ],
                      ),
                    ),),
              
                
              
              ],
            ),
          ),

          // G NAvbar

            GNav(tabs: [
                  GButton(
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