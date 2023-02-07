import 'package:todo_form/generated/locales.g.dart' as form_locales;
import 'package:todo_page/generated/locales.g.dart' as todo_locales;

class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'pt_BR': Locales.pt_BR,
    'en_US': Locales._en_US,
  };
}

class Locales {
  static final Map<String, String> _pt_BR = {};
  static final Map<String, String> _en_US = {};

  static Map<String, String> get pt_BR {
   _pt_BR.addAll(form_locales.Locales.pt_BR);
   _pt_BR.addAll(todo_locales.Locales.pt_BR);
    return _pt_BR;
  }

  static Map<String, String> get en_US {
    _en_US.addAll(form_locales.Locales.en_US);
    _en_US.addAll(todo_locales.Locales.en_US);
    return _en_US;
  }
}