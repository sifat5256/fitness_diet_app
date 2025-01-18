import 'package:fitness_diet_app/moduels/profile/view/separate_profile_set_screen/height_screen.dart';
import 'package:fitness_diet_app/moduels/profile/view/set_profile/profile_set_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileSetScreen extends StatelessWidget {
  final ProfileSetController controller = Get.put(ProfileSetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Wrap(
            spacing: 10,
            children: [
              _buildChip("Dairy"),
              _buildChip("Vegetables"),
              _buildChip("Fruits"),
              _buildChip("Organic"),
              _buildChip("Vegan"),
            ],
          ),

        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Obx(() => ChoiceChip(
      label: Text(label),
      selected: controller.selectedPreferences.contains(label),
      onSelected: (selected) {
        controller.togglePreference(label);
      },
    ));
  }
}
