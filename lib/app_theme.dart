
import 'package:flutter/material.dart';

class AppTheme {

  static final acColor = Colors.green;
  static final backgroundColor = Color(0x468485);

  static ThemeData createTheme(){
    final base = ThemeData.dark();
    return base.copyWith(
      tabBarTheme: new TabBarTheme(
          indicator: BoxDecoration(
         //   color: Colors.amber,
            border: Border(bottom: BorderSide(
              color: acColor
            ))
          )
        ),
      primaryColor:  acColor,
      accentColor: acColor,
     // backgroundColor: backgroundColor,

      buttonTheme: new ButtonThemeData(
        buttonColor: acColor,
        shape: RoundedRectangleBorder(side: BorderSide(color: acColor), borderRadius: BorderRadius.circular(2)),
        padding: EdgeInsets.all(8),
      ),
     textTheme: base.textTheme.copyWith(
        headline: base.textTheme.headline.copyWith(
          color: acColor
        )
      )
        

    );
  }


}