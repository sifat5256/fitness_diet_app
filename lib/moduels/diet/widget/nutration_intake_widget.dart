
import 'package:flutter/material.dart';

class NutrationIntakeSectionWidget extends StatelessWidget {
  const NutrationIntakeSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade200
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Consumed Today",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.blueGrey
            ),),
            Column(
              children: [

                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("530 ",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                    ),),
                    Text("/ 2500 Cal",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey
                    ),),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(child: LinearProgressIndicator(
                  value: 0.22,
                  minHeight: 8,// Example progress

                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                )),
                SizedBox(
                  height: 10,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}