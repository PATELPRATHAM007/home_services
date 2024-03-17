import 'package:flutter/material.dart';

Widget bookingProcess({
  required double screenSizeheight,
  required double screenSizewidth,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
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
          padding: EdgeInsets.symmetric(horizontal: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              3,
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
                          horizontal: 10, vertical: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: const Center(
                              child: Text(
                                '1', // Replace with your desired number
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Text Element',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'ID Element',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal, // Non-bolded text
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
