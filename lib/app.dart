import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/bindings/general_bindings.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: MyColors.primaryColor,
        body: Center(
          child: CircularProgressIndicator(color: MyColors.white,),
        ),
      ),
    );
  }
}
