import 'package:fitness_diet_app/app.dart';
import 'package:fitness_diet_app/component/button.dart';
import 'package:fitness_diet_app/moduels/profile/view/separate_profile_set_screen/gender_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../set_profile/profile_set_controller.dart';


class HeightScreen extends StatelessWidget {
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
          Text("How much your height?", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
          Text("This is used to set up for your recomendetation", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),),
          SizedBox(
            height: 200,
          ),
          Obx(() => Text(
            "${controller.height.value} cm",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          )),
         Obx(()=> Slider(
           value: controller.height.value.toDouble(),
           min: 100,
           max: 220,
           onChanged: (value) {
             controller.updateHeight(value.toInt());
           },
         ),

         ),
          Spacer(),
          CustomButton(
              text: "Got to home",
              onTap: (){
                Get.to(App());

              })

        ],
      ),
    );
  }
}
