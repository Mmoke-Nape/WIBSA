import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_routes.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: ListView(
          children: [
            Container(
              width: size.width,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 70),
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
            onTap: () => Get.toNamed(AppRoutes.contactRoute,
                arguments: {'page': 'contact'}),
            child: const NavButton(text: 'Contact Us', page: 'Contact Us'),
          ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
