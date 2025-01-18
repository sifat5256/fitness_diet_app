import 'package:fitness_diet_app/moduels/profile/view/set_profile/profile_set_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class GenderScreen extends StatelessWidget {
  final ProfileSetController controller = Get.put(ProfileSetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "How do you identify?",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              "This is used to set up for your recommendation",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey),
            ),
            const SizedBox(
              height: 200,
            ),

            // Male Gender Option
            GestureDetector(
              onTap: () => controller.updateGender("Male"),
              child: Obx(() => Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: controller.selectedGender.value == "Male"
                      ? Colors.blue
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Male",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )),
            ),
            const SizedBox(
              height: 20,
            ),

            // Female Gender Option
            GestureDetector(
              onTap: () => controller.updateGender("Female"),
              child: Obx(() => Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: controller.selectedGender.value == "Female"
                      ? Colors.pink
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Female",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )),
            ),
            const SizedBox(
              height: 20,
            ),

            // Others Gender Option
            GestureDetector(
              onTap: () => controller.updateGender("Others"),
              child: Obx(() => Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: controller.selectedGender.value == "Others"
                      ? Colors.green
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Others",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
