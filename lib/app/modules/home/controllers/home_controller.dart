import 'dart:math';
import 'package:get/get.dart';
class HomeController extends GetxController {



  final double A = 0.0.obs as double;
  final int P = int.parse(_principalAmount.text).obs as int;
  final double r = int.parse(_interestRate.text) / 12 / 100.obs as double;
  final int n = (_tenure ==  int.parse(_tenure.text) * 12) as int ;




    void _calculation() {

    A = (P * r * pow((1+r), n) / ( pow((1+r),n) -1));

    _emiResult = A.toStringAsFixed;

  }





  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}


