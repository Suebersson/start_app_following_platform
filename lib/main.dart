
// ----------------------------- Versão 2 --------------------------------

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'ui/app/mobile/mobile.dart' as mobile;
import 'ui/app/web/web.dart' as web;
import 'ui/app/desktop/desktop.dart' as desktop;
import 'ui/app/platformUndefined/platform_undefined.dart' as undefined;


void main() async{

  /// Executar procedimentos antes ou depois da app iniciar
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){

    await web.loadDependencies();
    runApp(const web.StartApp());

  }else if (Platform.isAndroid || Platform.isIOS) {

    await mobile.loadDependencies();
    runApp(const mobile.StartApp());

  } else if(Platform.isWindows || Platform.isLinux || Platform.isMacOS) {

    await desktop.loadDependencies();
    runApp(const desktop.StartApp());

  } else {

    runApp(const undefined.StartApp());

  }

}





/*
// ----------------------------- Versão 1 --------------------------------

import 'package:flutter/material.dart';

import './ui/app/platformUndefined/platform_undefined.dart'
  if (dart.library.io) 'ui/app/mobile/mobile.dart'// mobile e desktop
  if (dart.library.html) 'ui/app/web/web.dart';//web

void main() async{

  /// Executar procedimentos antes ou depois da app iniciar
  WidgetsFlutterBinding.ensureInitialized();

  await loadDependencies();
  
  runApp(const StartApp());

}
//--------------------------------------------------------------------------
*/
