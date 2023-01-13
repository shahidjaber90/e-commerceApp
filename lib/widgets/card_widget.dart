import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:flutter/material.dart';

cardCategory(
    context,
    itemImage,
    itemName,
    products,
    heightBox,
    widthBox,
    heightMainBox,
    widthMainBox,
    cardTopDirection,
    cardLeftDirection,
    imageLeftDirection,
    imageTopDirecion,
    textLeftDirection,
    textTopDirection,
    productTopDirection) {
  return Stack(children: [
    Container(
      width: MediaQuery.of(context).size.width * widthMainBox,
      height: MediaQuery.of(context).size.height * heightMainBox,
      // color: Colors.amber,
    ),
    Positioned(
      top: MediaQuery.of(context).size.width * cardTopDirection,
      left: MediaQuery.of(context).size.width * cardLeftDirection,
      child: Container(
        width: MediaQuery.of(context).size.width * widthBox,
        height: MediaQuery.of(context).size.height * heightBox,
        decoration: BoxDecoration(
          color: ColorConstant.cardBgColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    Positioned(
        top: MediaQuery.of(context).size.width * imageTopDirecion,
        left: MediaQuery.of(context).size.width * imageLeftDirection,
        child: Container(
          width: MediaQuery.of(context).size.width * widthBox,
          height: MediaQuery.of(context).size.height * heightBox,
          child: Image.asset(itemImage),
        )),
    Positioned(
        top: MediaQuery.of(context).size.width * textTopDirection,
        left: MediaQuery.of(context).size.width * textLeftDirection,
        child: Container(
          width: MediaQuery.of(context).size.width * widthBox,
          height: MediaQuery.of(context).size.height * heightBox,
          child: Text(
            itemName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'DM Sans',
              color: ColorConstant.subtitleTextColor,
              letterSpacing: 0.4,
            ),
          ),
        )),
    Positioned(
        top: MediaQuery.of(context).size.width * productTopDirection,
        left: MediaQuery.of(context).size.width * textLeftDirection,
        child: Container(
          width: MediaQuery.of(context).size.width * widthBox,
          height: MediaQuery.of(context).size.height * heightBox,
          child: Text(
            products,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'DM Sans',
              color: ColorConstant.subtitleTextColor.withOpacity(0.60),
            ),
          ),
        )),
  ]);
}

cardCategory2(
    context,
    itemImage,
    itemName,
    products,
    heightBox,
    widthBox,
    heightMainBox,
    widthMainBox,
    cardTopDirection,
    cardLeftDirection,
    imageLeftDirection,
    imageTopDirecion,
    textLeftDirection,
    textTopDirection,
    productTopDirection,
    productLeftDirection,
    indicatorTopDirection,
    indicatorLeftDirection) {
  return Stack(children: [
    Container(
      width: MediaQuery.of(context).size.width * widthMainBox,
      height: MediaQuery.of(context).size.height * heightMainBox,
      // color: Colors.amber,
    ),
    Positioned(
      top: MediaQuery.of(context).size.width * cardTopDirection,
      left: MediaQuery.of(context).size.width * cardLeftDirection,
      child: Container(
        width: MediaQuery.of(context).size.width * widthBox,
        height: MediaQuery.of(context).size.height * heightBox,
        decoration: BoxDecoration(
          color: ColorConstant.cardBgColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    Positioned(
        top: MediaQuery.of(context).size.width * imageTopDirecion,
        left: MediaQuery.of(context).size.width * imageLeftDirection,
        child: Container(
          width: MediaQuery.of(context).size.width * widthBox,
          height: MediaQuery.of(context).size.height * heightBox,
          child: Image.asset(itemImage),
        )),
    Positioned(
        top: MediaQuery.of(context).size.width * textTopDirection,
        left: MediaQuery.of(context).size.width * textLeftDirection,
        child: Container(
          width: MediaQuery.of(context).size.width * widthBox,
          height: MediaQuery.of(context).size.height * heightBox,
          child: Text(
            itemName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'DM Sans',
              color: ColorConstant.subtitleTextColor,
              letterSpacing: 0.4,
            ),
          ),
        )),
    Positioned(
        top: MediaQuery.of(context).size.width * productTopDirection,
        left: MediaQuery.of(context).size.width * productLeftDirection,
        child: Container(
          width: MediaQuery.of(context).size.width * widthBox,
          height: MediaQuery.of(context).size.height * heightBox,
          child: Text(
            products,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'DM Sans',
              color: ColorConstant.subtitleTextColor.withOpacity(0.60),
            ),
          ),
        )),
    Positioned(
        top: MediaQuery.of(context).size.width * indicatorTopDirection,
        left: MediaQuery.of(context).size.width * indicatorLeftDirection,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ImageConstant.greyIndicator),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Image.asset(ImageConstant.blackIndicator),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Image.asset(ImageConstant.greyIndicator),
          ],
        )),
  ]);
}

// Card 3

cardCategory3(
  context,
  mainBoxHeight,
  mainBoxWidth,
  cardHeight,
  cardWidth,
  cardTopDirection,
  cardLeftDirection,
  itemImage,itemName
) {
  return Stack(
    children: [
      Container(
        height: MediaQuery.of(context).size.height * mainBoxHeight,
        width: MediaQuery.of(context).size.width * mainBoxWidth,
      ),

      Positioned(
        top: MediaQuery.of(context).size.width * cardHeight,
        left: MediaQuery.of(context).size.width * cardWidth,
        child: Container(
          width: MediaQuery.of(context).size.width * cardTopDirection,
          height: MediaQuery.of(context).size.height * cardLeftDirection,
          decoration: BoxDecoration(
            color: ColorConstant.cardBgColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                // color: Colors.lime,
                height: double.infinity,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Image.asset(itemImage),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(itemName,style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      color: ColorConstant.blackColor),),
                    Row(
                      children: [
                        Text(TextConstant.ratingBeoSoundText,style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.blackColor),),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                          Image.asset(ImageConstant.yellowDot),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                          Image.asset(ImageConstant.yellowDot),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                          Image.asset(ImageConstant.yellowDot),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                          Image.asset(ImageConstant.yellowDot),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                          Image.asset(ImageConstant.greyDot),                          
                      ],
                    ),
                    Text(TextConstant.priceBeoSoundText,style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.blackColor),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      
    ],
  );
}
