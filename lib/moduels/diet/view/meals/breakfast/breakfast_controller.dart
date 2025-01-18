import 'package:get/get.dart';

class BreakfastController extends GetxController {
  // Observable selected category
  var selectedCategory = "All".obs;

  // Image data for each category
  final Map<String, List<String>> imageData = {
    "All": [
      "https://via.placeholder.com/300x200?text=Salad",
      "https://via.placeholder.com/300x200?text=Soup",
      "https://via.placeholder.com/300x200?text=Meat",
      "https://via.placeholder.com/300x200?text=Fish",
    ],
    "Salad": ["https://via.placeholder.com/300x200?text=Salad"],
    "Soup": ["https://via.placeholder.com/300x200?text=Soup"],
    "Meat": ["https://via.placeholder.com/300x200?text=Meat"],
    "Fish": ["https://via.placeholder.com/300x200?text=Fish"],
  };

  // Getter to return selected images
  List<String> get selectedImages => imageData[selectedCategory.value] ?? [];
}
