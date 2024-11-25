import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/themes/theme.dart';

import 'features/authentication/screen/on_boarding/on_boarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      home: const Scaffold(
        backgroundColor: MColors.primary,
        body: Center(
          child: CircularProgressIndicator(color: MColors.white,),
        ),
      ),
    );
  }
}