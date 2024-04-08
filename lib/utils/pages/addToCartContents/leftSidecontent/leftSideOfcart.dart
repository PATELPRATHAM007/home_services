import 'package:flutter/material.dart';
import 'package:home_services/utils/pages/addToCartContents/leftSidecontent/cancellationPart.dart';
import 'package:home_services/utils/pages/addToCartContents/leftSidecontent/detailaPartContent/detailSectionContainer.dart';

class LeftSideOfcart extends StatelessWidget {
  const LeftSideOfcart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailSectionContainer(),
              SizedBox(height: 10),
              CancellationPart(),
            ],
          ),
        ),
      ),
    );
  }
}
