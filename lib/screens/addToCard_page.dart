import 'package:e_commerce/screens/category_page.dart';
import 'package:e_commerce/screens/filter_page.dart';
import 'package:e_commerce/screens/mycart_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/button_widget.dart';
import 'package:e_commerce/widgets/card_widget.dart';
import 'package:e_commerce/widgets/colorBox_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class AddToCard extends StatefulWidget {
  const AddToCard({super.key});

  @override
  State<AddToCard> createState() => _AddToCardState();
}

class _AddToCardState extends State<AddToCard> {
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
                color: ColorConstant.cardBgColor,
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
                          
                          Image.asset(ImageConstant.shoppingBag),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),              
                ],

                ),
              ),
              
            ],
          ),
        ),

        // Positioned Work Start

        Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            // left: 100,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.82,
              width: MediaQuery.of(context).size.width * 1.00,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: ColorConstant.cardBgColor),
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [

                    const SizedBox(
                      height: 10,
                    ),

                    // Item Info
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24,top: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.40,
                        width: MediaQuery.of(context).size.width * 1.00,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: 
                                  Text(
                                    TextConstant.itemTitleText,
                                    style: TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: ColorConstant.blackColor.withOpacity(0.60)),
                                  )                                  
                            ),
                            const SizedBox(height: 16,),
                            Container(
                              alignment: Alignment.topLeft,
                              child: 
                                  Text(TextConstant.itemCardTitle,style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'DM Sans',
                                    color: ColorConstant.blackColor
                                  ),)                          
                            ),
                            const SizedBox(height: 30),
                            Container(
                              alignment: Alignment.topLeft,
                              child: 
                                  Text(
                                    TextConstant.from,
                                    style: TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: ColorConstant.blackColor.withOpacity(0.60)),
                                  )                                  
                            ),
                            const SizedBox(height: 8,),
                            Container(
                              alignment: Alignment.topLeft,
                              child: 
                                  Text(TextConstant.priceBeoSoundText,style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'DM Sans',
                                    color: ColorConstant.blackColor
                                  ),)                          
                            ),
                            const SizedBox(height: 30),
                            Container(
                              alignment: Alignment.topLeft,
                              child: 
                                  Text(
                                    TextConstant.availableColors,
                                    style: TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: ColorConstant.blackColor.withOpacity(0.60)),
                                  )                                  
                            ),
                            const SizedBox(height: 12,),
                            Container(
                              width: 96,
                              alignment: Alignment.topLeft,
                              child: 
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      colorBoxIcon2(ColorConstant.startedButtonColor,Icons.check),
                                      colorBox2(ColorConstant.pinkColor),
                                      colorBox2(ColorConstant.blackColor),
                                    ],
                                  )                    
                            ),
                            
                          ],
                        ),
                      ),
                    ), 
                  ],
                ),
              ),
            )),

            Positioned(
              top: MediaQuery.of(context).size.height * 0.60,
              child: Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width * 1.00,
              decoration: BoxDecoration(
              color: ColorConstant.bgColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight:  Radius.circular(12))
              ),
              child: 
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 50,),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(TextConstant.discriptionTitle,style: TextStyle(
                        color: ColorConstant.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'DM Sans'
                      ),),
                    ),
                    const SizedBox(height: 12,),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(TextConstant.discriptionSubTitle,style: TextStyle(
                        color: ColorConstant.blackColor.withOpacity(0.70),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DM Sans'
                      ),),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.08,),

                    buttonFunction4(ColorConstant.startedButtonColor, context,const MyCardPage()),




                        // Home Indicator
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
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
              
            )),
    
    
      Positioned(
              top: MediaQuery.of(context).size.height * 0.27,
              child: Container(
              alignment: Alignment.centerRight,
              height: MediaQuery.of(context).size.height * 0.42,
              width: MediaQuery.of(context).size.width * 0.88,
              // color: Colors.blue,
              child: Image.asset(ImageConstant.base),
      )
    )

      ]),
    );
  }
}