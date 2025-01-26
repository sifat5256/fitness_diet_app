import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
          Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),

          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.grey[500]
                    ,),
                ),
              ),
            ),
          ),
        ),
            const SizedBox(height: 15,),
            const Text("Recent activity",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 10,),
            SizedBox(
              height: 180,
              child: Row(
                children: [

                  Expanded(
                    child: Container(

                      decoration: BoxDecoration(
                        color: Colors.orange.shade200,
                        borderRadius: BorderRadius.circular(18),

                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(

                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(18),

                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Text("Popular excercise",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Body Yoga Deep Stretch",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.timelapse, color: Colors.grey),
                                      Text(
                                        "10:15",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(width: 10),
                                      Icon(Icons.local_fire_department, color: Colors.grey),
                                      Text(
                                        "390 kcl",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                      child: Material(
                                        elevation: 2,
                                        borderRadius: BorderRadius.circular(14),
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Play",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Icon(Icons.play_arrow),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Image.asset("lib/utils/assets/images/bkyouga.png"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),



          ],
        ),
      ),
    );
  }
}
