import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

late double width;
late double height;
late double safeAreaHorizontal;
late double safeAreaVertical;
late MediaQueryData mediaQueryData;
const int baseHeight = 667; // iPhone SE 2nd Gen Height
const int baseWidth = 375; // iPhone SE 2nd Gen Width

void initSizeService(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  safeAreaHorizontal =
      mediaQueryData.padding.left + mediaQueryData.padding.right;
  safeAreaVertical = mediaQueryData.padding.top + mediaQueryData.padding.bottom;
  width = mediaQueryData.size.width - safeAreaHorizontal;
  height = mediaQueryData.size.height - safeAreaVertical;
}

double scaleHeight(double size) {
  double scaleFactor = size / baseHeight;
  double scaledSize = height * scaleFactor;
  return scaledSize;
}

double scaleWidth(double size) {
  double scaleFactor = size / baseWidth;
  double scaledSize = width * scaleFactor;
  return scaledSize;
}
