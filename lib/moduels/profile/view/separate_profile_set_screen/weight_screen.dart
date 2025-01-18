import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../profile_screen.dart';
import '../set_profile/profile_set_controller.dart';
import '../set_profile/profile_set_screen.dart';


class WeightScreen extends StatelessWidget {
  final ProfileSetController controller = Get.put(ProfileSetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text("How much your weight?", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
          Text("This is used to set up for your recomendetation", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),),
          SizedBox(
            height: 200,
          ),
          Obx(() => Text(
            "${controller.weight.value} kg",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          )),
          Obx(()=>Slider(
            value: controller.weight.value.toDouble(),
            min: 30,
            max: 150,
            onChanged: (value) {
              controller.updateWeight(value.toInt());
            },
          ),


          ),

        ],
      ),
    );
  }
}
