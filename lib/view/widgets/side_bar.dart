import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/media_query_values.dart';

class SideBar extends StatefulWidget {
  const SideBar({
    super.key,
  });

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final List<IconData> _icons = [
    Icons.data_exploration_rounded,
    Icons.messenger,
    Icons.pie_chart_rounded,
    Icons.account_balance_wallet,
    Icons.message,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.06,
      height: context.height,
      color: darkBlack,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Container(
              width: context.width * 0.05,
              height: context.height * 0.05,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 4.0, color: primaryColor),
              ),
            ),
            SizedBox(
              height: context.height * 0.09,
            ),
            ..._icons
                .map(
                  (icon) => _customIcon(
                    icon,
                    _icons.indexOf(icon),
                  ),
                )
                .toList(),
            SizedBox(
              height: context.height * 0.02,
            ),
            Container(
              width: context.width * 0.03,
              height: context.height * 0.06,
              decoration: BoxDecoration(
                color: chocolateMelange,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Icon(
                Icons.data_exploration_rounded,
                color: primaryColor,
                size: 20.0,
              ),
            ),
            SizedBox(
              height: context.height * 0.015,
            ),
            Container(
              width: context.width * 0.03,
              height: context.height * 0.06,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Icon(
                Icons.account_balance,
                color: royalFuchsia,
                size: 20.0,
              ),
            ),
            SizedBox(
              height: context.height * 0.015,
            ),
            Container(
              width: context.width * 0.03,
              height: context.height * 0.06,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Icon(
                Icons.account_tree,
                color: promiscuousPink,
                size: 20.0,
              ),
            ),
            SizedBox(
              height: context.height * 0.015,
            ),
            Container(
              width: context.width * 0.03,
              height: context.height * 0.06,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Icon(
                Icons.add,
                color: darkGrey.withOpacity(0.6),
                size: 20.0,
              ),
            ),
            const Spacer(),
            Container(
              width: context.width * 0.03,
              height: context.height * 0.06,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Icon(
                Icons.logout,
                color: darkGrey.withOpacity(0.6),
                size: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _customIcon(IconData icon, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Icon(
        icon,
        color: index == 1 ? Colors.white : darkGrey.withOpacity(0.6),
      ),
    );
  }
}
