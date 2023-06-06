import 'dart:ui';

import 'package:dashboard_template_dribbble/utils/media_query_values.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'custom_button.dart';
import 'outline_button.dart';
import 'pie_chart.dart';

class StockWidget extends StatelessWidget {
  const StockWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.22,
      // height: context.height,
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 22.0,
      ),
      transform: Matrix4.translationValues(0, -75, 0),
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: context.width * 0.04,
                height: context.height * 0.07,
                decoration: BoxDecoration(
                  color: chocolateMelange,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Icon(
                  Icons.data_exploration_rounded,
                  color: primaryColor,
                  size: 30.0,
                ),
              ),
              SizedBox(
                width: context.width * 0.01,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Origin Game EA Inc.',
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.01,
                  ),
                  const Text(
                    '(OREA)',
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: context.height * 0.03,
          ),
          SizedBox(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: context.width * 0.15,
                  // height: context.height  * 0.1,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: darkGrey.withOpacity(0.1),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'My Portfolio',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: darkGrey),
                      ),
                      SizedBox(
                        height: context.height * 0.012,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '\$',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey),
                          ),
                          SizedBox(
                            width: context.width * 0.001,
                          ),
                          const Text(
                            '8,089.00',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Official Website',
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 12.0,
                ),
              ),
              SizedBox(
                width: context.width * 0.007,
              ),
              const Icon(
                Icons.arrow_outward_outlined,
                color: secondPrimaryColor,
                size: 18.0,
              ),
            ],
          ),
          SizedBox(
            height: context.height * 0.02,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              const PieChartWidget(),
              Container(
                width: context.width * 0.235,
                height: context.height * 0.235,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.0,
                    color: darkGrey.withOpacity(0.35),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Share Holder',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: darkGrey),
                    ),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '50',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: context.width * 0.001,
                        ),
                        Text(
                          '%',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: darkGrey, fontSize: 15.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.height * 0.02,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: blue,
                          radius: 3.0,
                        ),
                        SizedBox(
                          width: context.width * 0.004,
                        ),
                        Text(
                          'Promoter',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: darkGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: context.width * 0.15,
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: darkBlack,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.access_time,
                  size: 10.0,
                  color: darkGrey,
                ),
                SizedBox(
                  width: context.width * 0.015,
                ),
                Text(
                  'OB Nov - 17 Nov',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(
                  width: context.width * 0.008,
                ),
                const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 13.0,
                  color: darkGrey,
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.height * 0.015,
          ),
          accountsWidget(context, 'Prev Close', '\$17.112.00'),
          accountsWidget(context, '% Change', '+26%', isPercentage: true),
          accountsWidget(context, 'Market Cap', '\$28 M USD'),
          accountsWidget(context, 'PE Ratio', '14.285'),
          SizedBox(
            height: context.height * 0.02,
          ),
          CustomOutlineButton(width: context.width * 0.15, title: 'Sell Stock'),
          SizedBox(
            height: context.height * 0.02,
          ),
          CustomButton(width: context.width * 0.15, title: 'Buy Stock'),
        ],
      ),
    );
  }

  Padding accountsWidget(BuildContext context, String title, String value,
      {bool isPercentage = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        width: context.width * 0.15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: darkGrey),
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: isPercentage ? Colors.green : darkGrey,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
