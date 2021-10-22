import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  var KGS = 0.obs;

  increment(){
    KGS.value++;
  }
  decrement(){
    if (KGS.value<=0){
      Get.snackbar('Buying fruits', 'Can not be too low',
        icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3)


      );
    }
    else{
      KGS.value--;

    }
  }
}