import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/home_binding.dart';
import 'package:getex/localizations/app_localize.dart';
import 'package:getex/view/binding_example.dart';
import 'package:getex/view/homepage.dart';

import 'view/firstscreen.dart';
import 'view/secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/" ,page:() => const HomeScreen(),transition: Transition.leftToRight),
 GetPage(name: "/firstpage" ,page:() => const FirstScreen(),transition: Transition.leftToRight),
 GetPage(name: "/binding", page: ()=>const BindingScreen(),transition: Transition.leftToRight),
GetPage(name: "/secondpage", page:()=> const SecondScreen(),transition: Transition.fadeIn)
      ],
      locale:const  Locale("en"),
      translations: AppLocalize(),
    
      
      title: 'Flutter Demo',
      initialBinding: HomeBinding(),
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      
     
    );
  }
}

