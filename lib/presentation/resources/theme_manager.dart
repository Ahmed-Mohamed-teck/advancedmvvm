import 'package:advancedcours/presentation/resources/color_manager.dart';
import 'package:advancedcours/presentation/resources/font_manager.dart';
import 'package:advancedcours/presentation/resources/styles_manager.dart';
import 'package:advancedcours/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';


ThemeData getApplicationTheme(){
  return ThemeData(
  //  main colors of the app
  primaryColor: ColorManager.primaryColor,
  primaryColorLight: ColorManager.primaryOpacity70,
  primaryColorDark: ColorManager.darkPrimary,
  disabledColor: ColorManager.grey1, //this use with disabled button
  splashColor: ColorManager.primaryOpacity70, //ripple color
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),



  //  card view theme
  cardTheme: CardTheme(
    color: ColorManager.white,
    shadowColor: ColorManager.grey,
    elevation: AppSize.s4
  ),



  //  App bar theme
  appBarTheme: AppBarTheme(
    centerTitle: true,
    color: ColorManager.primaryColor,
    elevation: AppSize.s4,
    shadowColor: ColorManager.primaryOpacity70,
    titleTextStyle: getRegularStyle(color: ColorManager.white,fontSize: FontSize.s16),
  ),



  //  Button theme
  buttonTheme: ButtonThemeData(
    shape: const StadiumBorder(),
    disabledColor: ColorManager.grey1,
    buttonColor: ColorManager.primaryColor,
    splashColor: ColorManager.primaryOpacity70
  ),



  //Elevated button theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: getRegularStyle(color: ColorManager.white),
      primary: ColorManager.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12))
    )
  ),




  //  Text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: FontSize.s16),
      subtitle1: getMediumStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),
      caption: getRegularStyle(color: ColorManager.grey1),
      bodyText1: getRegularStyle(color: ColorManager.grey)
    ),




  //  input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle:  getRegularStyle(color: ColorManager.grey1),
      labelStyle: getMediumStyle(color: ColorManager.darkGrey),
      errorStyle: getRegularStyle(color: ColorManager.error),


      enabledBorder:OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      

      focusedBorder:OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primaryColor,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),


      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),


      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),




    )

  );
}