// import 'package:dashboardtest_1/analyticscard.dart';
import 'package:dashboardtest_1/Screens/dashboardcard.dart';
import 'package:dashboardtest_1/line_chart_card.dart';
import 'package:dashboardtest_1/pie_chart.dart';
import 'package:dashboardtest_1/responsive.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  final bool isTablet;
  final bool isDesktop;

  const DashboardBody(
      {super.key, this.isTablet = false, this.isDesktop = false});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Dashboard',
            style: TextStyle(
                fontSize: getResponsiveFontSize(context),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Welcome... JOHN DOE',
            style: TextStyle(fontSize: getResponsiveFontSize(context)),
          ),
          const SizedBox(height: 20.0),
          GridView.count(
            crossAxisCount: isDesktop
                ? 4
                : isTablet
                    ? 2
                    : 1,
            childAspectRatio: isDesktop
                ? 3
                : isTablet
                    ? 2
                    : 2.5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [
              const DashboardCard(
                color: Colors.teal,
                title: 'TOTAL TAXPAYERS',
                count: '68,686',
                svgIconPath: 'assets/images/world.svg',
              ),
              const DashboardCard(
                color: Colors.blue,
                title: 'INDIVIDUAL TAXPAYERS',
                count: '61,841',
                svgIconPath: 'assets/images/iirslogo.svg',
              ),
              const DashboardCard(
                color: Colors.purple,
                title: 'CORPORATE TAXPAYERS',
                count: '4,608',
                svgIconPath: 'assets/images/iirslogo.svg',
              ),
              const DashboardCard(
                color: Colors.grey,
                title: 'COMPLETED BIOMETRICS (TODAY)',
                count: '0',
                svgIconPath: 'assets/images/iirslogo.svg',
              ),
              LineChartCard(),
              const PieChartSample2(),
            ],
          ),
        ],
      ),
    );
  }
}
