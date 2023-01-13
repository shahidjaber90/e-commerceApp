import 'package:flutter/material.dart';

colorBox(color) {
  return Container(
    height: 44,
    width: 44,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: color,
    ),
  );
}
colorBoxIcon(color,setIcon) {
  return Container(
    height: 44,
    width: 44,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: color,
    ),
    child: Icon(setIcon),
  );
}
colorBox2(color) {
  return Container(
    height: 24,
    width: 24,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: color,
    ),
  );
}
colorBoxIcon2(color,setIcon) {
  return Container(
    height: 24,
    width: 24,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: color,
    ),
    child: Icon(setIcon),
  );
}
