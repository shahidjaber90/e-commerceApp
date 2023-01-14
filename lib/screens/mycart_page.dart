import 'package:e_commerce/screens/category_page.dart';
import 'package:e_commerce/screens/home_view.dart';
import 'package:e_commerce/screens/shipping_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/button_widget.dart';
import 'package:e_commerce/widgets/colorBox_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MyCardPage extends StatefulWidget {
  const MyCardPage({super.key});

  @override
  State<MyCardPage> createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  int qty = 0;

  void _incrementCounter() {
    setState(() {
      qty++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (qty >= 1) {
        qty--;
      } else {
        qty = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
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
                        Text(
                          TextConstant.myCart,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'DM Sans',
                              letterSpacing: 1,
                              color: ColorConstant.blackColor),
                        ),
                        Image.asset(ImageConstant.menuShape),
                      ],
                    ),
                  ),
                ), // Navbar End

                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
                  child: Column(
                    children: [
                      // QTY Card Start
                      Container(
                          height: 148,
                          width: 305,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: ColorConstant.cardBgColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 124,
                                width: 88,
                                child: Image.asset(ImageConstant.beosound),
                              ),
                              SizedBox(
                                height: 124,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      TextConstant.beosoundText,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'DM Sans',
                                          color: ColorConstant.blackColor),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          TextConstant.Color,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'DM Sans',
                                              color: ColorConstant.blackColor
                                                  .withOpacity(0.60)),
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        colorBox3(ColorConstant.blackColor),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          TextConstant.size,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'DM Sans',
                                              color: ColorConstant.blackColor
                                                  .withOpacity(0.60)),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          TextConstant.s,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'DM Sans',
                                              color: ColorConstant.blackColor
                                                  .withOpacity(0.60)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      TextConstant.priceBeoSoundText,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'DM Sans',
                                          color: ColorConstant.blackColor),
                                    ),
                                    SizedBox(
                                      height: 20,
                                      width: 110,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                _decrementCounter();
                                              },
                                              style: TextButton.styleFrom(
                                                  minimumSize:
                                                      const Size(4, 4)),
                                              child: Image.asset(
                                                  ImageConstant.minus)),
                                          Text(
                                            '$qty',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'DM Sans',
                                                color:
                                                    ColorConstant.blackColor),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              _incrementCounter();
                                            },
                                            style: TextButton.styleFrom(
                                                minimumSize:
                                                    const Size(4, 4)),
                                            child: Image.asset(
                                                ImageConstant.plus),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                     // QTY Card End

                     const SizedBox(height: 10,),

                     // Card Shipping Start

                     Container(
                      height: 78,
                      width: 305,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: ColorConstant.cardBgColor,width: 2)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          SizedBox(
                            height: 20,
                            width: 24,
                            child: Image.asset(ImageConstant.cartStore),
                          ),
                          SizedBox(
                            height: 54,
                            width:160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(TextConstant.shipping,style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'DM Sans',
                                  color: ColorConstant.blackColor
                                ),),
                                Text(TextConstant.days,style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'DM Sans',
                                  color: ColorConstant.blackColor.withOpacity(0.60)
                                ),),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 22,
                            width: 9,
                            // color: Colors.green,
                            child: Image.asset(ImageConstant.arrowDown),
                          ),
                        ]
                      )
                     ), // Card Shipping End


                     const SizedBox(height: 10,),

                     // Card Promo Code Start

                     Container(
                      height: 78,
                      width: 305,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: ColorConstant.cardBgColor,width: 2)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          SizedBox(
                            height: 15,
                            width: 15,
                            child: Image.asset(ImageConstant.devideSym),
                          ),
                          SizedBox(
                            height: 54,
                            width:100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(TextConstant.promoCode,style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'DM Sans',
                                  color: ColorConstant.blackColor
                                ),),
                                Text(TextConstant.promoCodePrice,style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'DM Sans',
                                  color: ColorConstant.blackColor.withOpacity(0.60)
                                ),),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 24,
                            width: 56,
                            decoration: BoxDecoration(
                              color: ColorConstant.startedButtonColor,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text(TextConstant.promoCodeBtn,style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'DM Sans',
                                  color: ColorConstant.blackColor
                                ),),
                          ),
                          SizedBox(
                            height: 22,
                            width: 9,
                            // color: Colors.green,
                            child: Image.asset(ImageConstant.check),
                          ),
                        ]
                      )
                     ), // Card Promo Code End
                    
                    const SizedBox(height: 48,),

                    Image.asset(ImageConstant.Line),

                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(TextConstant.total,style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'DM Sans',
                            color: ColorConstant.blackColor
                          ),),
                          Text(TextConstant.totalPrice,style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'DM Sans',
                            color: ColorConstant.blackColor
                          ),),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30,),
                    buttonFunction(TextConstant.checkout,ColorConstant.startedButtonColor,
                     context,const ShippingPage(), ImageConstant.arrowLongRight),
                   
                    ],
                  ),
                )
              ],
            ),
          ),

          // G NAvbar

          GNav(selectedIndex: 2, tabs: [
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
