import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Messages extends Translations {
  static final locale = Locale('en', 'US');

  static final fallbackLocale = Locale('en', 'US');

  static final languages = [
    'English',
    'বাংলা',
    'हिंदी',
    'العربية',
  ];

  static final locales = [
    const Locale('en', 'US'),
    const Locale('bn', 'BD'),
    const Locale('hi', 'IN'),
    const Locale('ar', 'SA'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Title',
         'allNamesOfAllah':'99 Names Of Allah'
          // English translations
        },
        'bn_BD': {
          'title': 'শিরোনাম',
          'allNamesOfAllah':'আল্লাহর ৯৯ নাম'
          // Bangla translations
        },
        'hi_IN': {
          'title': 'शीर्षक',
          'allNamesOfAllah':'अल्लाह के ९९ नाम'
          // Hindi translations
        },
        'ar_SA': {
          'title': 'عنوان','allNamesOfAllah':'تسعة وتسعون اسماً لله'
          // Arabic translations
        },
      };
}
