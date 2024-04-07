import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart";
import "package:home_services/commonFIles/navComponents/navigationBar.dart";

class TServicePage extends StatefulWidget {
  const TServicePage({super.key});

  @override
  State<TServicePage> createState() => _TServicePageState();
}

class _TServicePageState extends State<TServicePage> {
  @override
  Widget build(BuildContext context) {
   Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 75),
          child: const TNavigationBar()),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Row(
          children: [
            //sub service and title of the service
            Expanded(
              flex: 2,
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
                            WovenGridTile(4.8 / 7),
                            WovenGridTile(4.8 / 7),
                            WovenGridTile(4.8 / 7),
                          ],
                        ),
                        childrenDelegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return Container(
                              width: 80,
                              height: 200,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
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
            ),
            SizedBox(width: 20,),
            VerticalDivider(thickness: 1.3,),
            // worker list and details
            Expanded(
              flex: 6,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                      ),
                    ),
                  );
                },
              ),
            ),
            // offers and card
          ],
        ),
      ),
    );
  }
}
