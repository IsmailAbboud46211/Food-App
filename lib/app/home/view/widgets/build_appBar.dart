import 'package:finance_app/app/home/view/widgets/build_floating_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BuildFloatingIcon(
          icon: CupertinoIcons.bars,
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        BuildFloatingIcon(
          icon: Icons.notifications,
          onTap: () {},
        ),
      ],
    );
  }
}
