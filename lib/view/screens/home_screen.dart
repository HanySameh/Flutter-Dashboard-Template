import 'package:flutter/material.dart';

import '../../utils/media_query_values.dart';
import '../widgets/header.dart';
import '../widgets/overall_portfolio_card.dart';
import '../widgets/overview_statistic_widget.dart';
import '../widgets/side_bar.dart';
import '../widgets/stock_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Header(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      children: [
                        const Column(
                          children: [
                            OverallPortfolioCard(),
                            OverviewStatistic(),
                          ],
                        ),
                        SizedBox(
                          width: context.width * 0.023,
                        ),
                        const StockWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
