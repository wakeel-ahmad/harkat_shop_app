import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tourism/data/apis/base_api.dart';
import 'package:tourism/routes/routes.dart';
import 'core/core.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: Get.deviceLocale,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          // FormBuilderLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        fallbackLocale: const Locale('en', ''),
        supportedLocales: AppLocalizations.supportedLocales,
        title: 'Tourism',
        theme: AppTheme.instance.lightTheme,
        darkTheme: AppTheme.instance.darkTheme,
        initialRoute: Routes.splash,
        getPages: AppPages.routes,
        initialBinding: BindingsBuilder.put(() => AppApi()),
        // home: SplashView(),
      ),
    );
  }
}
