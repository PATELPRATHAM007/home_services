import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SubSerives extends StatefulWidget {
  const SubSerives({super.key});

  @override
  State<SubSerives> createState() => _SubSerivesState();
}

class _SubSerivesState extends State<SubSerives> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "repairing and mechine repairing ",
            style: TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.bold,
                height: 1.2),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "4.7 (10k bookings)",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 345,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey, width: 1.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: GridView.custom(
                gridDelegate: SliverWovenGridDelegate.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  pattern: [
                    WovenGridTile(4.8 / 7.1),
                    WovenGridTile(4.8 / 7.1),
                    WovenGridTile(4.8 / 7.1),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Container(
                      width: 85,
                      height: 210,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue,
                              ),
                              child: Image.asset(
                                "assets/images/homeWorker.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              width: 75,
                              height: 40,
                              child: Text(
                                "datafasfifisinndknfsn",
                                textAlign: TextAlign.center,
                              ),
                            )
                            // Text("data")
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
