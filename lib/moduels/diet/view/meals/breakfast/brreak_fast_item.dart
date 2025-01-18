import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'breakfast_controller.dart'; // Import the controller

class BreakFastItem extends StatefulWidget {
  const BreakFastItem({super.key});

  @override
  State<BreakFastItem> createState() => _BreakFastItemState();
}

class _BreakFastItemState extends State<BreakFastItem> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BreakfastController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Breakfast Items"),
      ),
      body: Column(
        children: [
          // Horizontal ListView for categories
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.imageData.keys.length,
              itemBuilder: (context, index) {
                final category = controller.imageData.keys.elementAt(index);
                return Obx(() {
                  final isSelected = controller.selectedCategory.value == category;
                  return GestureDetector(
                    onTap: () {
                      controller.selectedCategory.value = category;
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: isSelected ? Colors.blue : Colors.grey.shade200,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Center(
                          child: Text(
                            category,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                });
              },
            ),
          ),
          const SizedBox(height: 20),

          // Image Carousel
          Obx(() {
            final images = controller.selectedImages;
            return CarouselSlider(
              options: CarouselOptions(
                height: 200,
                enlargeCenterPage: true,
                autoPlay: true,
              ),
              items: images
                  .map((image) => ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ))
                  .toList(),
            );
          }),
        ],
      ),
    );
  }
}
