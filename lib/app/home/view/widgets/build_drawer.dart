import 'package:finance_app/app/home/data/home_data.dart';
import 'package:finance_app/app/home/view/widgets/builld_drawer_item.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:finance_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage(Images.avatarImage),
              ),
              decoration: BoxDecoration(
                color: AppColors.red,
              ),
              accountName: Text(
                "Dear user",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: context.width / 25,
                ),
              ),
              accountEmail: const Text(
                "ismail**@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => BuilldDrawerItem(
              title: drawerItems[index][0],
              icon: drawerItems[index][1],
            ),
            itemCount: drawerItems.length,
          )
        ],
      ),
    );
  }
}
