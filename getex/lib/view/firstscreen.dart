import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/controller/homecontroller.dart';
import 'package:getex/view/secondscreen.dart';

import '../controller/homecontrollerusingway2.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? _selectedLanguage;
  @override
  Widget build(BuildContext context) {
    Homecontrollerusingway2 controller=Get.put(Homecontrollerusingway2());//like dependency injection
    return Scaffold(
      
      appBar: AppBar(
         actions: [
            DropdownButton<String>(
              items: [
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'ar', child: Text('Arabic')),
                DropdownMenuItem(value: 'fr', child: Text('French')),
               
              ],
              onChanged: (String? newValue) {
               setState(() {
                _selectedLanguage = newValue;
              });
                print("Selected language: $newValue");
                 if (newValue != null) {
                Get.updateLocale(Locale(newValue));
                print("Selected language: $newValue");
              }
              },
              underline: const SizedBox(), // Removes the underline
              icon: const Icon(Icons.language),
            ),
          ],
        
        
          backgroundColor: Colors.blue,
        title: const Text("First page",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(child: ElevatedButton(onPressed: (){
              Get.toNamed("/binding");
            }, child:const  Text("first page"))),

             Column(
              children: [

            
                     
                      // using Gext controller
            //            GetX<Homecontrollerusingway2>(
            //       init: Homecontrollerusingway2(),
            //       builder: (controller){
            //         return Column(
            //           children: [
            //              Text(controller.num.value.toString(),style: const TextStyle(color: Colors.red),),
            //          const SizedBox(height: 10,),
            //           ElevatedButton(onPressed: (){
            //   controller.increment();

            // }, child: const Text("Increase"))



            // using OBX
                     Obx(()=>
                  
                  Column(
                      children: [
                         Text(controller.num.value.toString(),style: const TextStyle(color: Colors.red),),
                         Text("display".tr),
                     const SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){
              controller.increment();

            }, child: const Text("Increase"))

              ]
                    ),

                  )
                  
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}