import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

abstract class AppStyle {
static TextStyle styleRegular16(context){

  return TextStyle(
    color: Color(0xFF064060),
    fontSize: getResponsiveFontSize(context, 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
}

 
  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
 
  static TextStyle styleBold16(context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }
  
  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  
  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleMedium20(context) { 
    return TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize(BuildContext context, double fontSize) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.0;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
//   var dispatcher = PlatformDispatcher.instance;
//   var physicalSize = dispatcher.views.first.physicalSize.width;
//   var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
//   var width = physicalSize / devicePixelRatio;
    double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1000;
  }
}

// class Responsive {
//   // =========================
//   // 📏 Get Screen Width
//   // =========================
//   static double get _width {
//     final dispatcher = PlatformDispatcher.instance;
//     final physicalWidth = dispatcher.views.first.physicalSize.width;
//     final devicePixelRatio = dispatcher.views.first.devicePixelRatio;
//     return physicalWidth / devicePixelRatio;
//   }

//   // =========================
//   // 📊 Scale Factor
//   // =========================
//   static double get _scaleFactor {
//     if (_width < 600) {
//       return _width / 400;
//     } else if (_width < 900) {
//       return _width / 700;
//     } else {
//       return _width / 1000;
//     }
//   }

//   // =========================
//   // 🔤 Responsive Font
//   // =========================
//   static double font(double fontSize) {
//     double responsiveSize = fontSize * _scaleFactor;

//     double lowerLimit = fontSize * 0.8;
//     double upperLimit = fontSize * 1.2;

//     return responsiveSize.clamp(lowerLimit, upperLimit);
//   }

//   // =========================
//   // 📦 Responsive Width
//   // =========================
//   static double width(double value) {
//     return value * (_width / 375); // base width (iPhone design)
//   }

//   // =========================
//   // 📏 Responsive Height
//   // =========================
//   static double height(double value) {
//     final dispatcher = PlatformDispatcher.instance;
//     final physicalHeight = dispatcher.views.first.physicalSize.height;
//     final devicePixelRatio = dispatcher.views.first.devicePixelRatio;

//     double height = physicalHeight / devicePixelRatio;

//     return value * (height / 812); // base height
//   }

//   // =========================
//   // 🔲 Padding / Margin
//   // =========================
//   static double space(double value) {
//     return value * _scaleFactor;
//   }

//   // =========================
//   // 📱 Device Type
//   // =========================
//   static bool get isMobile => _width < 600;
//   static bool get isTablet => _width >= 600 && _width < 900;
//   static bool get isDesktop => _width >= 900;
// }
