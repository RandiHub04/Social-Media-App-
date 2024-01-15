import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallTealA200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.tealA200,
      );
  // Headline text style
  static get headlineSmallLeelawadeeUITealA200 =>
      theme.textTheme.headlineSmall!.leelawadeeUI.copyWith(
        color: appTheme.tealA200,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.64),
      );
  static get labelLargeGray50 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50.withOpacity(0.64),
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get labelMediumGray50 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGray50 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w500,
      );
  // Leelawadee text style
  static get leelawadeeUIBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w400,
      ).leelawadeeUI;
  // Title text style
  static get titleLargeInterOrange800 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.orange800,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeLibreBaskerville =>
      theme.textTheme.titleLarge!.libreBaskerville;
  static get titleSmallLailaGray100 =>
      theme.textTheme.titleSmall!.laila.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLailaGray50 =>
      theme.textTheme.titleSmall!.laila.copyWith(
        color: appTheme.gray50.withOpacity(0.64),
        fontSize: 14.fSize,
      );
  static get titleSmallTealA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.tealA200,
      );
}

extension on TextStyle {
  TextStyle get macondo {
    return copyWith(
      fontFamily: 'Macondo',
    );
  }

  TextStyle get laila {
    return copyWith(
      fontFamily: 'Laila',
    );
  }

  TextStyle get libreBaskerville {
    return copyWith(
      fontFamily: 'Libre Baskerville',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get leelawadeeUI {
    return copyWith(
      fontFamily: 'Leelawadee UI',
    );
  }
}
