import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageController extends GetxController {
  // Observable for the selected image name
  var selectedImageName = ''.obs;
}

class AllItemWidget extends StatelessWidget {
  const AllItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the GetX controller
    final ImageController controller = Get.put(ImageController());

    final List<Map<String, String>> imagePaths = [
      {
        "beef": "lib/utils/assets/breakfastImages/beef1.png",
        "lentil": "lib/utils/assets/breakfastImages/lentil1.png",
        "lettuce": "lib/utils/assets/breakfastImages/lettuce1.png",
      }
    ];

    // Flatten the map to get a list of image paths and names
    final images = imagePaths.expand((map) => map.entries).toList();

    return Scaffold(

      body: Column(
        children: [
          // Horizontal ListView of images
          Container(
           height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: images.length,
              itemBuilder: (context, index) {
                final image = images[index];
                return GestureDetector(
                  onTap: () {
                    // Update the selected image name using GetX
                    controller.selectedImageName.value = image.key;
                  },
                  child: Container(
                    color: Colors.transparent,
                    height: 200,
                    width: 250,
                    child: Image.asset(image.value),
                  ),
                );
              },
            ),
          ),
          // Display the selected image name below the ListView
          Obx(() {
            // Using Obx to update UI when selectedImageName changes
            return controller.selectedImageName.value.isNotEmpty
                ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${controller.selectedImageName.value}', // Show the name of the selected image
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            )
                : SizedBox.shrink();
          }),
        ],
      ),
    );
  }
}
