import 'package:flutter/material.dart';

class THomepageBodySection extends StatefulWidget {
  const THomepageBodySection({super.key});

  @override
  State<THomepageBodySection> createState() => _THomepageBodySectionState();
}

class _THomepageBodySectionState extends State<THomepageBodySection> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: screenSize.height,
          width: screenSize.width,
          color: Colors.grey[200],
        ),
        Padding(
          padding: EdgeInsets.all(0),
          child: Row(
            children: [
              SizedBox(
                width: screenSize.width * 0.45,
                height: screenSize.height,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            "We Providing",
                            style: TextStyle(
                                fontSize: 80  ,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                      const Padding(
                          padding: EdgeInsets.only(left: 90),
                          child: Text(
                            "Quality Work",
                            style: TextStyle(
                                height: .85,
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 35),
                          child: SizedBox(
                              width: 550,
                              child: Text(
                                "Quality work, simplified solutions, joyful results. That's the Home Service Standard. We treat your home like our own, and our expert touch is guaranteed to leave you smiling. Let us transform your to-do list into a done-and-done dream.",
                                style: TextStyle(
                                  height: 1.2,
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.justify,
                              ))),
                      
                      SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: SizedBox(
                          width: 320,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 50, 88, 220)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Center(
                                  child: Text(
                                  "Explore to our Services",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Icon(Icons.arrow_right_alt,color: Colors.white,size: 28,),
                                )
                              ],
                              
                            ),
                          ),
                        ),
                      )
                    ],  
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width * 0.55,
                height: screenSize.height,
                // color: Colors.blue,
                child: Image.asset("assets/images/worker.png",width: screenSize.width * 0.85 ,height: 900,),
              )
            ],
          ),
        )
      ],
    );
  }
}
