import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_app_bloc/services/theme_service.dart';

extension TextStyleExtension on BuildContext {


  TextStyle get h1 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: ThemeService.isDarkMode() ? Colors.blue : Colors.amber, letterSpacing: .5),
    );
  }

  TextStyle get headline2 {
    bool isDarkMode = Theme.of(this).brightness == Brightness.dark;
    return Theme.of(this).textTheme.headline2!.copyWith(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          color: isDarkMode ? Colors.white : Colors.black,
        );
  }

  TextStyle get bodyText1 {
    bool isDarkMode = Theme.of(this).brightness == Brightness.dark;
    return Theme.of(this).textTheme.bodyText1!.copyWith(
          fontSize: 16.0,
          color: isDarkMode ? Colors.white70 : Colors.black,
        );
  }

  TextStyle get bodyText2 {
    bool isDarkMode = Theme.of(this).brightness == Brightness.dark;
    return Theme.of(this).textTheme.bodyText2!.copyWith(
          fontSize: 14.0,
          color: isDarkMode ? Colors.white60 : Colors.black54,
        );
  }

  TextStyle get caption {
    bool isDarkMode = Theme.of(this).brightness == Brightness.dark;
    return Theme.of(this).textTheme.caption!.copyWith(
          fontSize: 12.0,
          color: isDarkMode ? Colors.white60 : Colors.black54,
        );
  }

  TextStyle get button {
    bool isDarkMode = Theme.of(this).brightness == Brightness.dark;
    return Theme.of(this).textTheme.button!.copyWith(
          fontSize: 18.0,
          color: isDarkMode ? Colors.black : Colors.white,
        );
  }
}
