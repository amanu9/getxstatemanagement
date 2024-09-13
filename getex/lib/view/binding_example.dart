import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/controller/homecontroller.dart';
import 'package:getex/view/secondscreen.dart';

import '../controller/homecontrollerusingway2.dart';

class BindingScreen extends StatefulWidget {
  const BindingScreen({super.key});

  @override
  State<BindingScreen> createState() => _BindingScreen();
}

class _BindingScreen extends State<BindingScreen> {
  Homecontroller controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

             
                
                GetBuilder<Homecontroller>(
                  
                  builder: (controller){
                    return Column(
                      children: [
                         Text(controller.name.toString(),style: const TextStyle(color: Color.fromARGB(255, 114, 112, 112)),),
                     const SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){
              controller.display();

            }, child: const Text("display name"))
                  
          ],
                  
        );
                
                  }


      ),
       ] ),),
    );
  }
}