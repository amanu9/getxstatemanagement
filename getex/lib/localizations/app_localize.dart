import 'package:get/get.dart';
import 'package:getex/localizations/language/en.dart';

import 'fr.dart';
import 'language/ar.dart';

class AppLocalize extends Translations{
  @override
  
  Map<String, Map<String, String>> get keys => {
 "en":en,
 "ar":ar,
 "fr":fr,
  };

}