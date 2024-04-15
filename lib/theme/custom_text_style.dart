import 'package:flutter/material.dart';
import 'package:jobpilot/core/utils/size_utils.dart';
import 'package:jobpilot/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text

class CustomTextStyles {
// Body text style
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeOpenSansOrange400 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.orange400,
      );
  static get bodyMediumDMSans => theme.textTheme.bodyMedium!.dMSans;
  static get bodyMediumDMSans13 => theme.textTheme.bodyMedium!.dMSans.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumDMSansBlack900 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumDMSansBluegray80002 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.blueGray80002,
      );
  static get bodyMediumDMSansGray90002 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumDMSansGray90004 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.gray90004,
      );
  static get bodyMediumDMSansOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumDMSansOnPrimaryContainer13 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 13.fSize,
      );
  static get bodySmal110 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmal111 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBluegray10001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray10001,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray30002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30002,
      );
  static get bodySmallBluegray30003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30003,
      );
  static get bodySmallBluegray3000310 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30003,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray3000311 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30003,
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallBluegray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 10.fSize,
      );
  static get bodySmallGray40002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40002,
        fontSize: 10.fSize,
      );
  static get bodySmallGray40003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40003,
        fontSize: 10.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallGray90003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90003,
      );
  static get bodySmallGray90004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90004,
      );
  static get bodySmallGray9000410 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90004,
        fontSize: 10.fSize,
      );
  static get bodySmallGray90099 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90099,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmall0penSans => theme.textTheme.bodySmall!.openSans;
  static get bodySmallOpenSans10 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall0penSansBluegray30003 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray30003,
        fontSize: 10.fSize,
      );
  static get bodySmall0penSansBluegray30003_1 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray30003,
      );
  static get bodySmal10penSansBluegray40001 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray40001,
      );

  static get bodySmall0penSansGray40002 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray40002,
      );
  static get bodySmall0penSansGray40003 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray40003,
      );
  static get bodySmallOpenSansGray60002 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray60002,
        fontSize: 10.fSize,
      );
  static get bodySmall0penSansGray90002 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmall0penSansGray90003 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray90003,
      );
  static get bodySmal10penSansGray90004 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray90004,
      );
  static get bodySmallOpenSansOnPrimary =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmall0penSansOnPrimaryContainer =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmal10penSansOrange400 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.orange400,
      );
  static get bodySmall0penSansRedA200 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.redA200,
      );
  static get bodySmal10penSansff333030 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: Color(0XFF333030),
      );
  static get bodySmal10penSansff514a6b =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: Color(0XFF514A6B),
      );

  static get bodySmall0penSansffa9a5b8 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: Color(0XFFA9A5B8),
      );
  static get bodySmall0range400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange400,
      );
  static get bodySmallRedA200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA200,
      );
  static get bodySmallRedA20001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA20001,
      );
  static get bodySmallff150b3d => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF150B3D),
      );
  static get bodySmallff333030 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF333030),
      );
  static get bodySmallff514a6b => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF514A6B),
      );
  static get bodySmallffa9a5b8 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFA9A5B8),
      );
  static get bodySmallffff9228 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFF9228),
      );
  static get bodySmallffffffff => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
// Display text style
  static get displayMediumBlack900 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black900,
      );
  static get displayMediumfffca34d => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFFFCA34D),
      );
// Label text style
  static get labelLargeBluegray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray70001,
      );
  static get labelLargeGray90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get labelLargeGray90003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeOnPrimaryContainerMedium =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOpenSans =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansBluegray900 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansGray90002 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );

  static get labelLargeOpenSansOnPrimaryContainer =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansOrange400 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.orange400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansff150b3d =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: Color(0XFF150B3D),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansffa9a5b8 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: Color(0XFFA9A5B8),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOrange400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orange400,
      );
  static get labelLargeff150b3d => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF150B3D),
      );

  static get labelLargeffa9a5b8 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFA9A5B8),
      );
  static get labelMediumExtraBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get labelSmallOnPrimaryContainer =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeGray90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 22.fSize,
      );
  static get titleLargeOpenSans =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );

  static get titleLargeOpenSansOnPrimaryContainer =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleMediumGray90003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get titleMediumGray90003Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOpenSans => theme.textTheme.titleMedium!.openSans;
  static get titleMediumOpenSansGray90001 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumOpenSansGray90003 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansSemiBold =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleSmallGray90003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90003,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get titleSmallOnPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnPrimaryContainer_2 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOpenSans =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOpenSansBluegray900 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallOpenSansGray90001 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmall0penSansGray90003 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.gray90003,
      );
  static get titleSmallOpenSansOnPrimaryContainer =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOpenSansPrimary =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOpenSansff000000 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w600,
      );
  static get titleSmall0penSansff150b3d =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: Color(0XFF150B3D),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallff000000 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF000000),
      );
  static get titleSmallffffffff => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }
}
