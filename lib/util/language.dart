import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../view/service/navigation.dart';

AppLocalizations language = AppLocalizations.of(NavigationService.navigatorKey.currentContext!)!;

void setLanguage(BuildContext context){
  language = AppLocalizations.of(context)!;
}
