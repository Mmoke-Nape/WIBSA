import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:wibsa_website_v2/screens/home/desktop/desktop-home.dart';
import 'package:wibsa_website_v2/screens/home/mobile/mobile-home.dart';
import 'package:wibsa_website_v2/screens/home/tablet/tablet-home.dart';

import '../../constant/responsive.dart';
import '../../widgets/sideMenu/side-bar.dart';
import '../../widgets/sideMenu/side-nenu-controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final sideMenuController = Provider.of<SideMenuController>(context);

    return Scaffold(
      // key: sideMenuController.scaffoldKey,
      drawer: const SideMenu(),
      body: const SafeArea(
        child: Responsive(
          desktop: DesktopHomeScreen(),
          mobile: MobileHomeScreen(),
          tablet: TabletHomeScreen(),
        ),
      ),
    );
  }
}
