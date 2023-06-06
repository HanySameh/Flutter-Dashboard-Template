import '../../utils/colors.dart';
import '../../utils/media_query_values.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'outline_button.dart';
import 'total_widget.dart';

class OverallPortfolioCard extends StatelessWidget {
  const OverallPortfolioCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0, -90, 0),
      width: context.width * 0.65,
      height: context.height * 0.24,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 22.0),
      decoration: BoxDecoration(
        color: lightBlack.withOpacity(0.9),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                'Overall Portfolio',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              CustomOutlineButton(
                  width: context.width * 0.08, title: 'Withdraw'),
              SizedBox(
                width: context.width * 0.015,
              ),
              CustomButton(
                width: context.width * 0.08,
                title: 'Deposit',
                isIconButton: true,
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TotalWidget(),
              TotalWidget(),
              TotalWidget(),
              TotalWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
