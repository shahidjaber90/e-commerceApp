import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:flutter/material.dart';

buttonFunction(color, context, navigate,images) {
  return Container(
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
              width: MediaQuery.of(context).size.width * 0.35,
              child: Text(TextConstant.startedButtonText,
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
  return Container(
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
  return Container(
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
