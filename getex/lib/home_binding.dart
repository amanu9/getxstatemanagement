import 'package:get/get.dart';
import 'package:getex/controller/homecontroller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(Homecontroller());// homecontroller then initialize Home biding  in main
  }

}