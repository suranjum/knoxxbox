import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
        .copyWith(primary: kPrimaryColor, secondary: kAccentColor),
    fontFamily: 'NotoSans',
    textTheme: const TextTheme(
      bodyText2: TextStyle(fontSize: 14.0, color: Color(0xFF505050)),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0.5,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.grey.shade50,
    cardTheme: CardTheme(
      elevation: 0,
      color: kPrimaryColor.withAlpha(15),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(kCardBorderRadius)),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.black12,
      space: 20,
    ),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(color: kPrimaryColor.withAlpha(100)),
      indicatorSize: TabBarIndicatorSize.tab,
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.black,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        padding: kButtonPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kButtonBorderRadius),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        padding: kButtonPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kButtonBorderRadius),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      foregroundColor: kPrimaryColor,
      padding: kButtonPadding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kButtonBorderRadius),
      ),
    )),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: kAccentColor,
      foregroundColor: Colors.grey.shade50,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kInputDecorationBorderRadius),
        // borderSide: BorderSide(width: 0.5, color: kBorderColor),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kInputDecorationBorderRadius),
        // borderSide: BorderSide(width: 0.5, color: kPrimaryColor),
        borderSide: BorderSide.none,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kInputDecorationBorderRadius),
        // borderSide: BorderSide(width: 0.5, color: kBorderColor),
        borderSide: BorderSide.none,
      ),
      prefixIconColor: kPrimaryColor,
      suffixIconColor: kPrimaryColor,
      floatingLabelStyle: const TextStyle(color: kPrimaryColor),
      filled: true,
      contentPadding: kInputDecorationPadding,
      isDense: true,
    ),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.grey.shade100),
    popupMenuTheme: PopupMenuThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    ),
  );
}

ThemeData themeDark() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue, brightness: Brightness.dark)
        .copyWith(primary: kPrimaryColor, secondary: kAccentColor),
    fontFamily: 'NotoSans',
    textTheme: const TextTheme(
      bodyText2: TextStyle(fontSize: 14.0),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0.5,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
    cardTheme: CardTheme(
      elevation: 0,
      color: kAccentColor.withAlpha(15),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(kCardBorderRadius))),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dividerTheme: const DividerThemeData(
      color: Colors.black12,
      space: 20,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: kPrimaryColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        padding: kButtonPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kButtonBorderRadius),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kAccentColor,
        padding: kButtonPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kButtonBorderRadius),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      padding: kButtonPadding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kButtonBorderRadius),
      ),
    )),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kInputDecorationBorderRadius),
        // borderSide: BorderSide(width: 0.5, color: kBorderColor),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kInputDecorationBorderRadius),
        // borderSide: BorderSide(width: 0.5, color: kAccentColor),
        borderSide: BorderSide.none,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kInputDecorationBorderRadius),
        // borderSide: BorderSide(width: 0.5, color: kBorderColor),
        borderSide: BorderSide.none,
      ),
      prefixIconColor: kAccentColor,
      suffixIconColor: kAccentColor,
      floatingLabelStyle: const TextStyle(color: kAccentColor),
      filled: true,
      contentPadding: kInputDecorationPadding,
      isDense: true,
    ),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.grey.shade800),
    popupMenuTheme: PopupMenuThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
    listTileTheme: const ListTileThemeData(
      selectedColor: kAccentColor,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: kAccentColor,
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    ),
  );
}
