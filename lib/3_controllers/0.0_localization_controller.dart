import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:vpeepalvoappoct/8_languages/0.0_en_us.dart';

class LocalizationService extends Translations {
  static final locale = Locale('gu', 'IN');
  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
      };
}
