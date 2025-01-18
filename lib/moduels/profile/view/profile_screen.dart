

import 'package:fitness_diet_app/component/button.dart';
import 'package:fitness_diet_app/moduels/profile/view/set_profile_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'set_profile/profile_set_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                child: Icon(Icons.person_outline),
                radius: 100,
              ),
            ),
            Material(
              elevation: 3,
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white
                ),
                child: const Center(child: Text("Your Height 183 cm",style: TextStyle(
                  fontSize: 20,
                ),)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 3,
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white
                ),
                child: const Center(child: Text("Your Height 183 cm",style: TextStyle(
                  fontSize: 20,
                ),)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 3,
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white
                ),
                child: const Center(child: Text("Your Height 183 cm",style: TextStyle(
                  fontSize: 20,
                ),)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 3,
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white
                ),
                child: const Center(child: Text("Your Height 183 cm",style: TextStyle(
                  fontSize: 20,
                ),)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 3,
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white
                ),
                child: const Center(child: Text("Your Height 183 cm",style: TextStyle(
                  fontSize: 20,
                ),)),
              ),
            ),
            const Spacer(),
            CustomButton(
                text: "Set Your Profile",
                onTap: (){
                  Get.to(const SetProfileOnboarding());
                })
          ],
        ),
      ),
    );
  }
}
