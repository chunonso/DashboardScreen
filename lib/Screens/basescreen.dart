// import 'package:dashboardtest_1/Screens/certificatescreen.dart';
// import 'package:dashboardtest_1/Screens/dashboardscreen.dart';
// import 'package:dashboardtest_1/draweritem.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class BaseScreen extends StatelessWidget {
//   final Widget body;
//   final String title;

//   const BaseScreen({
//     required this.body,
//     required this.title,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: SvgPicture.asset(
//           'assets/images/iirslogo.svg',
//           height: 55,
//         ),
//         centerTitle: true,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20),
//             child: DropdownButtonHideUnderline(
//               child: DropdownButton2<String>(
//                 customButton: const Row(
//                   children: [
//                     Icon(Icons.person),
//                     Icon(Icons.arrow_drop_down),
//                   ],
//                 ),
//                 items: const [
//                   DropdownMenuItem(
//                     value: 'profile',
//                     child: Text('Profile'),
//                   ),
//                   DropdownMenuItem(
//                     value: 'logout',
//                     child: Text('Log Out'),
//                   ),
//                 ],
//                 onChanged: (value) {
//                   // Handle menu options
//                   if (value == 'profile') {
//                     // Navigate to profile
//                   } else if (value == 'logout') {
//                     // Handle logout
//                   }
//                 },
//                 buttonStyleData: const ButtonStyleData(
//                   padding: EdgeInsets.symmetric(horizontal: 16),
//                   height: 40,
//                   width: 140,
//                 ),
//                 dropdownStyleData: const DropdownStyleData(
//                   width: 160,
//                   offset: Offset(-20, 0),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             Container(
//               color: Colors.black,
//               padding: const EdgeInsets.all(16.0),
//               child: const Row(
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.white,
//                     child: Icon(Icons.person, size: 40),
//                   ),
//                   SizedBox(width: 16.0),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "JOHN DOE",
//                           style: TextStyle(color: Colors.white, fontSize: 16.0),
//                         ),
//                         Text(
//                           "JOHNDOE44@gmail.com",
//                           style:
//                               TextStyle(color: Colors.white70, fontSize: 12.0),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             DrawerItem(
//               icon: Icons.dashboard,
//               title: 'Dashboard',
//               onTap: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => const DashboardScreen(),
//                   ),
//                 );
//               },
//               showArrow: false,
//             ),
//             DrawerItem(
//               icon: Icons.receipt,
//               title: 'IGR Dashboard',
//               onTap: () {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => const CertificateScreen(),
//                   ),
//                 );
//               },
//             ),
//             DrawerItem(
//               icon: Icons.analytics,
//               title: 'Individual Registration',
//               onTap: () {},
//             ),
//             DrawerItem(
//               icon: Icons.account_box,
//               title: 'Company Registration',
//               onTap: () {},
//             ),
//             DrawerItem(
//               icon: Icons.group,
//               title: 'Assessment',
//               onTap: () {},
//             ),
//             DrawerItem(
//               icon: Icons.business,
//               title: 'Email Notifier',
//               onTap: () {},
//             ),
//             DrawerItem(
//               icon: Icons.people,
//               title: 'E-Payment',
//               onTap: () {},
//             ),
//             DrawerItem(
//               icon: Icons.credit_card,
//               title: 'Report',
//               onTap: () {},
//             ),
//             DrawerItem(
//               icon: Icons.history,
//               title: 'View Action History',
//               onTap: () {},
//             ),
//             DrawerItem(
//               icon: Icons.credit_card,
//               title: 'Manage User',
//               onTap: () {},
//             ),
//             DrawerItem(
//               icon: Icons.lock,
//               title: 'Change Password',
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//       body: body,
//     );
//   }
// }

import 'package:dashboardtest_1/Screens/certificatescreen.dart';
import 'package:dashboardtest_1/Screens/dashboardscreen.dart';
import 'package:dashboardtest_1/draweritem.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BaseScreen extends StatefulWidget {
  final Widget body;
  final String title;

  const BaseScreen({
    required this.body,
    required this.title,
    super.key,
  });

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int selected = 0; // Track selected drawer item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/iirslogo.svg',
          height: 55,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                customButton: const Row(
                  children: [
                    Icon(Icons.person),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                items: const [
                  DropdownMenuItem(
                    value: 'profile',
                    child: Text('Profile'),
                  ),
                  DropdownMenuItem(
                    value: 'logout',
                    child: Text('Log Out'),
                  ),
                ],
                onChanged: (value) {
                  // Handle menu options
                  if (value == 'profile') {
                    // Navigate to profile
                  } else if (value == 'logout') {
                    // Handle logout
                  }
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 40,
                  width: 140,
                ),
                dropdownStyleData: const DropdownStyleData(
                  width: 160,
                  offset: Offset(-20, 0),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(16.0),
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "JOHN DOE",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        Text(
                          "JOHNDOE44@gmail.com",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Drawer Items with InkWell and selection feedback
            DrawerItem(
              icon: Icons.dashboard,
              title: 'Dashboard',
              onTap: () {
                setState(() {
                  selected = 0; // Update the selected item index
                });
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const DashboardScreen(),
                  ),
                );
              },
              isSelected: selected == 0, // Highlight selected item
            ),
            DrawerItem(
              icon: Icons.receipt,
              title: 'IGR Dashboard',
              onTap: () {
                setState(() {
                  selected = 1;
                });
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const CertificateScreen(),
                  ),
                );
              },
              isSelected: selected == 1,
            ),
            DrawerItem(
              icon: Icons.analytics,
              title: 'Individual Registration',
              onTap: () {
                setState(() {
                  selected = 2;
                });
              },
              isSelected: selected == 2,
            ),
            DrawerItem(
              icon: Icons.account_box,
              title: 'Company Registration',
              onTap: () {
                setState(() {
                  selected = 3;
                });
              },
              isSelected: selected == 3,
            ),
            DrawerItem(
              icon: Icons.group,
              title: 'Assessment',
              onTap: () {
                setState(() {
                  selected = 4;
                });
              },
              isSelected: selected == 4,
            ),
            DrawerItem(
              icon: Icons.business,
              title: 'Email Notifier',
              onTap: () {
                setState(() {
                  selected = 5;
                });
              },
              isSelected: selected == 5,
            ),
            DrawerItem(
              icon: Icons.people,
              title: 'E-Payment',
              onTap: () {
                setState(() {
                  selected = 6;
                });
              },
              isSelected: selected == 6,
            ),
            DrawerItem(
              icon: Icons.credit_card,
              title: 'Report',
              onTap: () {
                setState(() {
                  selected = 7;
                });
              },
              isSelected: selected == 7,
            ),
            DrawerItem(
              icon: Icons.history,
              title: 'View Action History',
              onTap: () {
                setState(() {
                  selected = 8;
                });
              },
              isSelected: selected == 8,
            ),
            DrawerItem(
              icon: Icons.credit_card,
              title: 'Manage User',
              onTap: () {
                setState(() {
                  selected = 9;
                });
              },
              isSelected: selected == 9,
            ),
            DrawerItem(
              icon: Icons.lock,
              title: 'Change Password',
              onTap: () {
                setState(() {
                  selected = 10;
                });
              },
              isSelected: selected == 10,
            ),
          ],
        ),
      ),
      body: widget.body,
    );
  }
}
