import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:flutter/material.dart';

textFieldFunction(labelText,fieldText,controller,iconLogo,context) {
  return Padding(
    padding: const EdgeInsets.only(top:24),
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: ColorConstant.textFieldTextColor),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
          TextField(
            controller: controller,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              prefixIcon: Image.asset(iconLogo),
              hintText: fieldText,
              hintStyle:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'DM Sans'
              ),
                     
            ),
          )
        ],
      ),
      
    ),
  );
}






passwordFieldFunction(labelText,fieldText,controller,iconLogo,context,_obsecureText,suffixFunction) {
  return Padding(
    padding: const EdgeInsets.only(top:36),
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: ColorConstant.textFieldTextColor),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
          TextField(
            controller: controller,
            obscureText: _obsecureText,
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
              prefixIcon: Image.asset(iconLogo),
              suffixIcon: suffixFunction,
              hintText: fieldText,
              hintStyle:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'DM Sans'
              ),
                     
            ),
          )
        ],
      ),
      
    ),
  );
}
