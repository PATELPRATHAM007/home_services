import 'package:flutter/material.dart';

List spacialOfferColumn = [
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Powersaver",
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
      ),
      const SizedBox(height: 10),
      const SizedBox(
        width: 280,
        height: 70,
        child: Text(
          "save up to 3000 on Electricity bill",
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w400,
              height: 1.2),
        ),
      ),
      const SizedBox(height: 10),
      const Text(
        "AC Servicing",
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w200,
            height: 1.2),
      ),
      const SizedBox(height: 5),
      ElevatedButton(
        onPressed: () {},
        child: const Text("book now"),
      )
    ],
  ),

  //column2
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Save 20 %",
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        width: 2800,
        height: 80,
        child: Text(
          "Shine bathroom deserve",
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w400,
              height: 1.2),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text("book now"),
      )
    ],
  ),

  //column 3
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "spacial Offer",
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        width: 280,
        height: 80,
        child: Text(
          "get experts in 2 hours at 149\$",
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w400,
              height: 1.2),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text("book now"),
      )
    ],
  ),

  //column 4
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "spacial Offer",
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        width: 280,
        height: 80,
        child: Text(
          "get experts cleaning at 149\$",
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w400,
              height: 1.2),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text("book now"),
      )
    ],
  )
];
