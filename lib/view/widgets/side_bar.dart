import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/media_query_values.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

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
            Icon(
              Icons.data_exploration_rounded,
              color: darkGrey.withOpacity(0.6),
            ),
          ],
        ),
      ),
    );
  }
}
