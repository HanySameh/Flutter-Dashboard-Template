import 'package:dashboard_template_dribbble/utils/media_query_values.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'line_chart.dart';

class OverviewStatistic extends StatefulWidget {
  const OverviewStatistic({
    super.key,
  });

  @override
  State<OverviewStatistic> createState() => _OverviewStatisticState();
}

class _OverviewStatisticState extends State<OverviewStatistic> {
  final List<String> _times = ['1D', '1W', '1M', '1Y', 'MAX'];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.65,
      // height: context.height * 0.24,
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 22.0,
      ),
      transform: Matrix4.translationValues(0, -70, 0),
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Overview Statistic',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.insert_drive_file_rounded,
                color: darkGrey,
                size: 15.0,
              ),
              SizedBox(
                width: context.width * 0.01,
              ),
              const Icon(
                Icons.star,
                color: primaryColor,
                size: 15.0,
              ),
              SizedBox(
                width: context.width * 0.01,
              ),
              const Icon(
                Icons.settings,
                color: darkGrey,
                size: 15.0,
              ),
            ],
          ),
          SizedBox(
            height: context.height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: context.width * 0.04,
                    height: context.height * 0.08,
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
                      const Text(
                        'Origin Game EA Inc. (OREA)',
                        style: TextStyle(
                          color: darkGrey,
                          fontSize: 12.0,
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.01,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
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
                                '42,069.00',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: context.width * 0.009,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.green,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: context.width * 0.001,
                              ),
                              Text(
                                '+24%',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: Colors.green),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: context.width * 0.3,
                height: context.height * 0.09,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: darkBlack,
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ..._times
                        .map(
                          (e) => _lastTimeWidget(context, _times.indexOf(e), e),
                        )
                        .toList(),
                  ],
                ),
              ),
            ],
          ),
          const LineChartWidget(),
        ],
      ),
    );
  }

  Container _lastTimeWidget(BuildContext context, int index, String time) {
    return Container(
      width: context.width * 0.05,
      height: context.height * 0.08,
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.circular(12.0),
        gradient: index == 2
            ? const LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  primaryColor,
                  secondPrimaryColor,
                ],
              )
            : null,
      ),
      child: Center(
        child: Text(
          time,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: index == 2 ? Colors.white : darkGrey,
                fontSize: 15.0,
              ),
        ),
      ),
    );
  }
}
