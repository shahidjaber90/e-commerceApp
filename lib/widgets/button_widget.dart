import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:flutter/material.dart';

buttonFunction(text,color, context, navigate,images) {
  return SizedBox(
    height: 44,
    width: MediaQuery.of(context).size.width * 0.90,
    child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => navigate));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                alignment: Alignment.centerLeft,
                height: 44,
                width: MediaQuery.of(context).size.width * 0.18),
            Container(
              alignment: Alignment.center,
              height: 44,
              width: MediaQuery.of(context).size.width * 0.44,
              child: Text(text,
                  style: const TextStyle(
                      fontSize: 12,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'DM Sans')),
            ),
            Container(
                alignment: Alignment.centerRight,
                height: 44,
                width: MediaQuery.of(context).size.width * 0.18,
                child: Image.asset(images)),
          ],
        )),
  );
}




buttonFunction2(btnText,color, context, navigate,rIcon1) {
  return SizedBox(
    height: 44,
    width: MediaQuery.of(context).size.width * 0.90,
    child: ElevatedButton(
        onPressed: () {
          navigate;
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                alignment: Alignment.centerLeft,
                height: 44,
                width: MediaQuery.of(context).size.width * 0.18),
            Container(
              alignment: Alignment.center,
              height: 44,
              width: MediaQuery.of(context).size.width * 0.35,
              child: Text(btnText,
                  style: const TextStyle(
                      fontSize: 12,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'DM Sans')),
            ),
            Container(
                alignment: Alignment.centerRight,
                height: 44,
                width: MediaQuery.of(context).size.width * 0.18,
                child: Icon(rIcon1)
                ),
          ],
        )),
  );
}


buttonFunction3(btnText,color, context, navigate,lIcon1) {
  return SizedBox(
    height: 44,
    width: MediaQuery.of(context).size.width * 0.90,
    child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => navigate));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                alignment: Alignment.centerLeft,
                height: 44,
                width: MediaQuery.of(context).size.width * 0.10,
                child: Icon(lIcon1)
                ),
            Container(
              alignment: Alignment.center,
              height: 44,
              width: MediaQuery.of(context).size.width * 0.51,
              child: Text(btnText,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'DM Sans')),
            ),
            Container(
                alignment: Alignment.centerRight,
                height: 44,
                width: MediaQuery.of(context).size.width * 0.10,
                ),
          ],
        )),
  );
}

// 4

buttonFunction4(color, context, navigate) {
  return SizedBox(
    height: 44,
    width: MediaQuery.of(context).size.width * 0.90,
    child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigate));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child:  Container(
              alignment: Alignment.center,
              height: 44,
              width: MediaQuery.of(context).size.width * 0.35,
              child: Text(TextConstant.addToCart,
                  style: const TextStyle(
                      fontSize: 12,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'DM Sans')),
            ),
         
        )
  );
}


// Reverse Button

buttonFunctionReverse(text,color, context, navigate,images) {
  return SizedBox(
    height: 44,
    width: MediaQuery.of(context).size.width * 0.90,
    child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => navigate));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Row(
          children: [
            Container(
                height: 44,
                width: MediaQuery.of(context).size.width * 0.04,
                child: Image.asset(images)),
            Container(
                alignment: Alignment.centerLeft,
                height: 44,
                width: MediaQuery.of(context).size.width * 0.12),
            Container(
              alignment: Alignment.center,
              height: 44,
              width: MediaQuery.of(context).size.width * 0.50,
              child: Text(text,
                  style: const TextStyle(
                      fontSize: 12,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'DM Sans')),
            ),
            ],
        )
        ),
  );
}
