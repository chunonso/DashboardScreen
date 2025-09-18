import 'package:flutter/material.dart';

class DrawerItem extends StatefulWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool showArrow;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.showArrow = true,
    required bool isSelected,
  });

  @override
  _DrawerItemState createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icon),
      title: Text(widget.title),
      trailing: widget.showArrow
          ? Icon(_isExpanded ? Icons.arrow_drop_down : Icons.arrow_right)
          : null,
      onTap: () {
        if (widget.showArrow) {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        }
        widget.onTap();
      },
    );
  }
}
