import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:flutter/material.dart';

cardCategory(context, itemImage, itemName, products,
heightBox,widthBox,
heightMainBox,widthMainBox,
cardTopDirection,cardLeftDirection,
imageLeftDirection,imageTopDirecion,
textLeftDirection,textTopDirection,
productTopDirection
) {
  return Stack(
    children: [

      Container(
      width: MediaQuery.of(context).size.width * widthMainBox,
      height: MediaQuery.of(context).size.height * heightMainBox,
      // color: Colors.amber,

      ),
      
    Positioned(
      top: MediaQuery.of(context).size.width * cardTopDirection,
      left: MediaQuery.of(context).size.width * cardLeftDirection,
      child: 
      Container(
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
      ) ),
    Positioned(
      top: MediaQuery.of(context).size.width * textTopDirection,
      left: MediaQuery.of(context).size.width * textLeftDirection,
      child: Container(
        width: MediaQuery.of(context).size.width * widthBox,
      height: MediaQuery.of(context).size.height * heightBox,
        child: Text(itemName,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'DM Sans',
                color: ColorConstant.subtitleTextColor,
                letterSpacing: 0.4,
                ),),
      ) ),
    Positioned(
      top: MediaQuery.of(context).size.width * productTopDirection,
      left: MediaQuery.of(context).size.width * textLeftDirection,
      child: Container(
        width: MediaQuery.of(context).size.width * widthBox,
      height: MediaQuery.of(context).size.height * heightBox,
        child: Text(products,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'DM Sans',
                color: ColorConstant.subtitleTextColor.withOpacity(0.60),
                ),),
      ) ),

    ]
  );
}
