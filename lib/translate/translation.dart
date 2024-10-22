import 'package:portfolio_flutter/translate/en_translate.dart';
import 'package:portfolio_flutter/translate/jp_translate.dart';

class L {
  static String lan = 'en';
}

Map<String, String> translate = enTranslate;

String t(String key) {
  if(L.lan == 'en'){
     translate = enTranslate;
  } else if(L.lan == 'jp') {
    translate = jPTranslate;
  }
  if (translate[key] != null){
    return translate[key]!;
  }
 return 'error';
}