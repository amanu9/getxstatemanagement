import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/controller/homecontroller.dart';
import 'package:getex/view/secondscreen.dart';

import '../controller/homecontrollerusingway2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("Home page",style: TextStyle(color: Colors.white),
      
        
        ),
        actions: [
          TextButton(onPressed: (){
            Get.toNamed("/firstpage");
          }, child: const Text("Next",style: TextStyle(color: Colors.white),))
        ],
      backgroundColor: Colors.blue,
        centerTitle:true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(child: ElevatedButton(onPressed: (){
              Get.toNamed("/firstpage");
            }, child:const  Text("Home page"))),

             Column(
              children: [
                // using Getbuilder controller
            //     GetBuilder<Homecontroller>(
            //       init: Homecontroller(),
            //       builder: (controller){
            //         return Column(
            //           children: [
            //              Text(controller.num.toString(),style: const TextStyle(color: Colors.red),),
            //          const SizedBox(height: 10,),
            //           ElevatedButton(onPressed: (){
            //   controller.increment();

            // }, child: const Text("Increase"))
           
                     

                      // using Gext controller
                       GetX<Homecontrollerusingway2>(
                  init: Homecontrollerusingway2(),
                  builder: (controller){
                    return Column(
                      children: [
                         Text(controller.num.value.toString(),style: const TextStyle(color: Colors.red),),
                     const SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){
              controller.increment();

            }, child: const Text("Increase"))


              ]
                    );

                  })
                  
               
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}