import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              touchCallback: (FlTouchEvent event, pieTouchResponse) {
                setState(() {
                  if (!event.isInterestedForInteractions ||
                      pieTouchResponse == null ||
                      pieTouchResponse.touchedSection == null) {
                    touchedIndex = -1;
                    return;
                  }
                  touchedIndex =
                      pieTouchResponse.touchedSection!.touchedSectionIndex;
                });
              },
            ),
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
            centerSpaceRadius: 80,
            sections: showingSections(),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final radius = isTouched ? 25.0 : 20.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: promiscuousPink,
            value: 20,
            radius: radius,
            showTitle: false,
            borderSide: const BorderSide(width: 4, color: lightBlack),
          );
        case 1:
          return PieChartSectionData(
            color: darkYellow,
            value: 20,
            radius: radius,
            showTitle: false,
            borderSide: const BorderSide(width: 4, color: lightBlack),
          );
        case 2:
          return PieChartSectionData(
            color: royalFuchsia,
            value: 30,
            radius: radius,
            showTitle: false,
            borderSide: const BorderSide(width: 4, color: lightBlack),
          );
        case 3:
          return PieChartSectionData(
            color: blue,
            value: 50,
            radius: radius,
            showTitle: false,
            borderSide: const BorderSide(width: 4, color: lightBlack),
          );
        default:
          throw Error();
      }
    });
  }
}
