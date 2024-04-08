import 'package:flutter/material.dart';
import 'package:home_services/utils/localData/bookingProcessData.dart';

Widget bookingProcess({
  required double screenSizeheight,
  required double screenSizewidth,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
    child: Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "How to book Service",
              style: TextStyle(
                color: Colors.black,
                fontSize: 65,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              bookingProcessSteps.length,
              (index) {
                return Container(
                  width: 320,
                  height: 400,
                  child: Card(
                    elevation: 3,
                    clipBehavior: Clip.antiAlias,
                    shadowColor: const Color.fromARGB(255, 212, 212, 212),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child:  Center(
                              child: Text(
                                "${index +1}", // Replace with your desired number
                                style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            bookingProcessSteps[index].title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(12  ),
                            child: Text(
                              bookingProcessSteps[index].paragraph,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal, // Non-bolded text
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    ),
  );
}
