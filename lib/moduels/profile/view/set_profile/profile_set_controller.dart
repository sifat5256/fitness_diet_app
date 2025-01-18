import 'package:get/get.dart';

class ProfileSetController extends GetxController {
  // State variables
  var weight = 75.obs;
  var height = 170.obs;
  var selectedPreferences = <String>[].obs;

  RxString selectedGender = ''.obs;

  void updateWeight(int value) {
    weight.value = value;
  }

  void updateHeight(int value) {
    height.value = value;
  }

  void togglePreference(String preference) {
    if (selectedPreferences.contains(preference)) {
      selectedPreferences.remove(preference);
    } else {
      selectedPreferences.add(preference);
    }
  }




  // Method to update the selected gender
  void updateGender(String gender) {
    selectedGender.value = gender;
  }
}
