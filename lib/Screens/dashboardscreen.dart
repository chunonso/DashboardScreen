import 'package:dashboardtest_1/Screens/basescreen.dart';
import 'package:dashboardtest_1/dashboardbody.dart';
import 'package:dashboardtest_1/responsive.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScreen(
      title: 'Dashboard',
      body: Responsive(
        mobile: DashboardBody(),
        tablet: DashboardBody(isTablet: true),
        desktop: DashboardBody(isDesktop: true),
      ),
    );
  }
}
