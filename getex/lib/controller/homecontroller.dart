import 'package:get/get.dart';

class Homecontroller extends GetxController{
  int num=0;
  String name="";
  void increment(){
    num ++;
    update();
  }

  void display(){
    name="john";
       update();

  }
}