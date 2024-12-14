import 'package:flutter/material.dart';

class BuilldDrawerItem extends StatelessWidget {
  final String title;
  final Icon icon;
  const BuilldDrawerItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
    );
  }
}
