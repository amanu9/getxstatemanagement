import 'package:get/get.dart';

class Homecontroller extends GetxController{
  int num=0;
  void increment(){
    num ++;
    update();
  }
}