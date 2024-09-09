import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
GetPage(name: "/secondpage", page:()=> const SecondScreen(),transition: Transition.fadeIn)
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     
    );
  }
}

