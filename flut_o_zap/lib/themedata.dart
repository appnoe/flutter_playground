import 'package:flutter/material.dart';

ThemeData appTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      textTheme: appTextTheme(base.textTheme),
      primaryColor: Colors.blue,
      backgroundColor: Colors.white,
      selectedRowColor: Colors.blue
  );
}

TextTheme appTextTheme(TextTheme base) {
  return base.copyWith(
      headline1: base.headline1.copyWith(
        fontWeight: FontWeight.w300, 
        fontSize: 30,
        color: Colors.black
      ),
      subtitle1: base.subtitle1.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 15
      ),
      subtitle2: base.subtitle2.copyWith(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 15
  )
  );
}