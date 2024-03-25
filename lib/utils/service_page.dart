import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/logoSection.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/utils/responsiveWeb/responsive.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: const Size(double.infinity,70),
        child: Builder(
          builder:(context) {
            if (Responsive.isDesktop(context)) {
              return Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CLogoSection(
                      logoWidth: TSizeValues.logoWidth,
                      logoHeight: TSizeValues.logoHeight,
                      gap: TSizeValues.logoGap,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        5,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: () {
                                // add event
                              },
                              child: const Text("data"),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            }
             else {
                // Return an empty AppBar if not desktop
                return AppBar(
                  title: const Text('AppBar Title'),
                );
              }
          },
        ),
      ),
    );
  }
}