import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardCard extends StatelessWidget {
  final Color color;
  final String title;
  final String count;
  // final IconData icon;
  final String svgIconPath;

  const DashboardCard({
    super.key,
    required this.color,
    required this.title,
    required this.count,
    // required this.icon,
    required this.svgIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 5.0),
                Text(
                  count,
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: SvgPicture.asset(
              svgIconPath,
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
