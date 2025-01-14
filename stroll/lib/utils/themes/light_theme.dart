//* THEMES
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/utils/constants/colors.dart';
import 'package:stroll/utils/constants/typography.dart';
// import 'package:schoolspace/constants/colors.dart';
// import 'package:schoolspace/constants/typography.dart';

class AppThemes {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.lavender,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.lavender,
      primary: AppColors.lavender,
      onPrimary: AppColors.charcoal,
      primaryFixed: AppColors.softLavender,
      onSecondaryFixed: AppColors.lavenderBlue,
      surface: AppColors.black,
      onSurface: AppColors.white,
      onSurfaceVariant: AppColors.alabaster,
      secondary: AppColors.slate,
      onSecondary: AppColors.silverGrey,
      tertiary: AppColors.lightGrey,
      tertiaryFixed: AppColors.lilac,
      tertiaryFixedDim: AppColors.mutedGrey,
      secondaryFixed: AppColors.obsidian, 
    ),
    useMaterial3: false,

    dropdownMenuTheme: DropdownMenuThemeData(
        menuStyle: MenuStyle(
      shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r))),
      padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h)),
    )),

    //* My text themes
    textTheme: TextTheme(
      titleSmall: AppTypography.titleSmall,
      bodyLarge: AppTypography.bodyLarge,
      bodyMedium: AppTypography.bodyMedium,
      bodySmall: AppTypography.bodySmall,
      labelLarge: AppTypography.labelLarge,
    ),

    //* Scaffold theme
    // scaffoldBackgroundColor: AppColors.black,

    //* Input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),

      // focused border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.slate),
        borderRadius: BorderRadius.circular(100.r),
      ),

      // enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.slate.withValues(alpha: 0.7),
        ),
        borderRadius: BorderRadius.circular(100.r),
      ),
    ),
  );
}
