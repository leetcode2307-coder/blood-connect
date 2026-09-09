import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';
import 'controllers/locale_controller.dart';
import 'router/app_router.dart';
import 'theme/app_theme.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (_) => LocaleController(),
      child: const BloodConnectApp(),
    ),
  );
}

class BloodConnectApp extends StatefulWidget {
  const BloodConnectApp({super.key});

  @override
  State<BloodConnectApp> createState() => _BloodConnectAppState();
}

class _BloodConnectAppState extends State<BloodConnectApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    final localeController = Provider.of<LocaleController>(context);
    
    return MaterialApp.router(
      title: 'BloodConnect',
      theme: AppTheme.themeData,
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      locale: localeController.locale,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('te'), // Telugu
        Locale('hi'), // Hindi
        Locale('ta'), // Tamil
        Locale('kn'), // Kannada
        Locale('ml'), // Malayalam
      ],
    );
  }
}
